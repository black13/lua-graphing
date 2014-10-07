
local ffi = require("ffi")
local math = require("math")
ffi.cdef[[
void Sleep(int ms);
int printf(const char *fmt, ...);
]]
function sleep(ms)
    ffi.C.Sleep(ms)
end
local inspect = require 'inspect'
local vclass = require 'vclass'

function freq_iter(start,stop,n)
	local step = (stop - start) / n
	local i=0
	local _n=n+1
	return function()
		local freq = start + step*i
		i=i+1
		if i > (_n) then 
			return nil
		end
		return freq
	end
end
function format_value(value,unit)
	local prefix = {'','K','M','G'}
	local digits = (value >= 1.e9) and {9,3} or 
	      (value >= 1.e8) and {8,2} or
	      (value >= 1.e7) and {7,2} or
	      (value >= 1.e6) and {6,2} or
	      (value >= 1.e5) and {5,1} or
	      (value >= 1.e4) and {4,1} or
	      (value >= 1.e3) and {3,1} or
	      (value >= 1.e2) and {2,0} or
	      (value >= 1.e1) and {1,0} or {0,0}
	
	value = value * math.pow(1000.0,-digits[2 ])
	--local ret = string.format("%.2f%s",value,prefix[digits[2] + 1] .. unit)
	return (string.format("%.2f%s",value,prefix[digits[2] + 1] .. unit))
end

local lecroy354a = {}

lecroy354a.__index = lecroy354a

function lecroy354a:new (o)
	--local o = o or {}
	local inst={}
	if type(o) == "table" then
		 for k,v in pairs(o) do
			 inst[k]=v
		 end
	end
	
	local device = vclass:new()
	local ret = device:open(inst.connect)
	inst.device = device
	inst.buff   = ffi.new("uint8_t[256]")
	setmetatable(inst, lecroy354a)
	return inst
end

function lecroy354a:wait_esr()
	local buff  = ffi.new("uint8_t[256]") 
	while true do
		str = ffi.string(buff)
		self.device:write("*ESR?")	
		--print (tonumber(str))
		self.device:read(buff,255)
		if tonumber(str) == 0 then
			sleep(1000)
			break
		end
		
	end
end
function lecroy354a:bus_init()
	
	
	--self.device:write(":SWE:POIN 501")
	--self.device:write("SENS:SWE:TYPE SWEEP")
	self.device:write("*RST")
    self.device:write("*CLS")
	self.device:write("C1:TRA ON")
	self.device:write("C2:TRA OFF")
	self.device:write("C3:TRA OFF")
	self.device:write("C4:TRA OFF")
	--turn off all but trace 1. 
	
	self.device:write("C1:OFST 0.0")
	
	self.device:write("C1:CPL")
	self.device:write("DC1M")
	self.device:write("C1:PROBE AUTO")
	self.device:write("C1:BWL FULL")
	self.device:write("C1:VDIV 2.00000")
	self.device:write("C1:OFST 0.000000")
	
	self.device:write("MLEN 500K")
    self.device:write("DTPOINTS 500K")
			
	lecroy354a.wait_esr(self)
	sleep(5000)
end

function lecroy354a:start_freq(setting)
	--print(":FREQ:STAR "  .. format_value(setting ,'HZ'))

end

function lecroy354a:center(cent,span)
end

function lecroy354a:bandwidth()
	
end

local function bandwidths(freq)	
	local ret = (freq >= 1.e9  )  and {rbw=1.e6,vbw=3.e6,span=2.e6} 	   or 
				(freq >= 10.e6 )  and {rbw=100.e3,vbw=300.e3,span=1.e6}  or
				(freq >= 150.e3)  and {rbw=10.e3,vbw=30.e3,span=100.0e3} or
				(freq >= 100.e3)  and {rbw=3.e3,vbw=30.e3,span=10.0e3} or
				(freq >= 10.e3 )  and {rbw=3.e3,vbw=9.e3,span=10.0e3}   or
				(freq >= 1.e3  )  and {rbw=100.0,vbw=300.0,span=500.0}   or
				(freq >= 100.0 )  and {rbw=10.0,vbw=30.0,span=50.0}      or
				{rbw=10.0,vbw=30.0,span=50.0}
	return ret
end

function lecroy354a:trace(setting) -- for lack of a better argument name
    local ret = {}	
	
	self.device:write("DTFORM BYTE")
	--self.device:write("DTPOINTS 10K")
	self.device:write("TDIV 0.00200")
	self.device:write("TRDL 0.000000")
	self.device:write("MLEN 10K")
    self.device:write("DTPOINTS 10K")
	--offset 
	local offset  = ffi.new("uint8_t[256]") 
	sleep(2000)
	self.device:write("C1:OFST?")
	ret=self.device:read(offset,255)
	local ofset_number = tonumber(ffi.string(offset))
	--print (string.format("%d",ofset_number))
	--gain
	local gain  = ffi.new("uint8_t[256]") 
	self.device:write("C1:VDIV?")
	ret=self.device:read(gain,255)
	local gain_number = tonumber(ffi.string(gain))
	gain_number = 1.0*gain_number
	--print ("" .. string.format("%e",gain_number))
	
	--get waveform
	local preamble  = ffi.new("uint8_t[4]") 
	self.device:write("DTWAVE?")
	sleep(1000)
	ret=self.device:read(preamble,2)
	
	str = ffi.string(preamble)
	--print (string.format("preamble %s",str))
	local byte_count=tonumber(string.sub(str,2))

	--print (string.format("byte count %d",byte_count))
	
	str = ffi.string(preamble)
	
	--print (string.format("byte_count %d",byte_count))
	local bytes=ffi.new("int8_t[?]",byte_count+1) 
	ffi.fill(bytes, byte_count+1)
	--print ("line before read")
	ret=self.device:read(bytes,byte_count)
	str = ffi.string(bytes)

	--print (string.format("curve bytes %s",str))

	curve_bytes = tonumber(str)
	--print (tonumber(str))
	
	curve   = ffi.new("int8_t[?]",curve_bytes+1) 
	--print(	string.format("points %s  ", curve_bytes/4) )
	--plus newline at end.
	ret=self.device:read(curve,curve_bytes+1)
	sleep(1000)
	ret.values = {}
	for i = 0 , (curve_bytes) - 1 do

		intermediate = curve[i]*4.0*gain_number/128.0
		
		intermediate = intermediate - ofset_number
		--print(intermediate)
		--print (string.format("%e",intermediate))
		--ffi.C.printf("%f\n",data[i])
		----print( intermediate) 
		ret.values[#ret.values+1] = intermediate
	end
	return ret
end

function lecroy354a:marker(o) -- for lack of a better argument name
    local ret = {}
	
end

function lecroy354a:stop(setting)
	self.device:write("FB "  .. format_value(setting ,'HZ'))
end

function lecroy354a:start(setting)
	self.device:write("FA "  .. format_value(setting ,'HZ'))
end

function lecroy354a:raw(setting)
	self.device:write(setting)
end

function lecroy354a:close(setting)
	self.device:close()
end


return lecroy354a