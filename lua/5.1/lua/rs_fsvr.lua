local ffi = require("ffi")
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
	return (string.format(" %.2f %s",value,prefix[digits[2] + 1] .. unit))
end

local rs_fsvr = {}

rs_fsvr.__index = rs_fsvr

function rs_fsvr:new (o)
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
	setmetatable(inst, rs_fsvr)
	return inst
end

function rs_fsvr:bus_init()
	self.device:write(":SYST:PRES;")
	local preamble  = ffi.new("uint8_t[3]") 
	self.device:write("*OPC?")
	ret=self.device:read(preamble,2)
	str = ffi.string(preamble)
	--print (str)
	--make sa
	self.device:write("INST SA")
	self.device:write("FORM:BORD SWAP")
	self.device:write("FORM:TRAC REAL,32")
	self.device:write("INIT:CONT OFF")
	self.device:write("CALC:MARK1:STAT ON")
	--self.device:write("SYST:DISP:UPD ON")
	self.device:write("SENS:DET POS")
	self.device:write(":SWE:POIN 501")
	sleep(1000)
end

function rs_fsvr:start_freq(setting)
	self.device:write(":FREQ:STAR "  .. format_value(setting ,'HZ'))
end

function rs_fsvr:center(cent,span)
end

function rs_fsvr:bandwidth()
	
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

function rs_fsvr:trace(setting) -- for lack of a better argument name
    local ret = {}	
	setmetatable(setting,{__index={start=30.0e6,stop=1.0e9,det='POS',channel=1}})
	local start,stop,det =
	setting[1] or setting.start,
	setting[2] or setting.stop,
	setting[3] or setting.det,
	setting[4] or setting.stan

	--print(string.format(setting.center))

	self.device:write(":FREQ:STOP "  .. format_value(setting.stop ,'HZ'))
	self.device:write(":FREQ:STAR "  .. format_value(setting.start ,'HZ'))
	
	--self.device:write(":TRACe1:FSCan:DISPlay ON")
	--self.device:write(":TRACe2:FSCan:DISPlay ON")
	--self.device:write(":TRACe3:FSCan:DISPlay ON")
	--:TRACe[1]|2|3:FSCan:DISPlay ?
	buff   = ffi.new("uint8_t[256]")
	--ret=self.device:read(buff,256)
	--str = ffi.string(buff)
	--delay = tonumber(str)
	--print (delay)

	--self.device:write(":FORM:BORD SWAP")
	self.device:write(":FORM:TRAC:DATA REAL,32")
	self.device:write("TRAC:FSC:DATA? TRACE1;")
	--Do a scan
	self.device:write(":INIT:IMM;")
	self.device:write("*OPC?")
	
	while true do
		self.device:read(buff,255)
		str = ffi.string(buff)
		
		--print (tonumber(str))
		if tonumber(str) == 1 then
			break
		end
		sleep(1000)
	end
	--now read the trace.
	--self.device:write(":FORM:BOARD SWAP")
	self.device:write(":FORM:TRAC:DATA REAL,32")
	self.device:write(":TRACe? TRACE1")
	
	local preamble  = ffi.new("uint8_t[3]") 
	
	ret=self.device:read(preamble,2)
	str = ffi.string(preamble)

	--print(	string.format(" preamble %s  ", str) )
	--print (ret.ret)
	
	local byte_count=tonumber(str:sub(2))
	--print(byte_count)
	local bytes=ffi.new("int8_t[?]",byte_count+1) 
	
	ret=self.device:read(bytes,byte_count)
	str = ffi.string(bytes)
	
	curve_bytes = tonumber(str)
	--print (tonumber(str))
	
	curve   = ffi.new("int8_t[?]",curve_bytes) 
	--print(	string.format("points %s  ", curve_bytes/4) )
	ret=self.device:read(curve,curve_bytes)
	
end

function rs_fsvr:range(setting) -- for lack of a better argument name
    local ret = {}	
	local setting = setting or {rbw=1.0e3,vbw=3.0e3,time='auto'}
	
	if setting.stop == nil then
		setting.stop = 1.0e6
	end	
	if setting.start == nil then
		setting.start = 30.e3
    end
	
	self.device:write(":POW:GAIN 0")
	 
	self.device:write(":UNIT:POW DBUV")
	self.device:write(":SENS:POW:ATT 10")
 
	buff   = ffi.new("uint8_t[256]")
	
	--self.device:write(":SENS:SWE:TIME 20S")
	self.device:write(":SENS:SWE:TIME 1S")
	self.device:write(":SENS:BAND:RES 1 KHZ")
	self.device:write(":SENS:BAND:VID 3 MHZ")
	self.device:write(":INIT:CONT OFF")
	self.device:write("SENS:DET MPOS")
	self.device:write("INP:COUP DC")
	self.device:write(":SENS:FREQ:STOP 150.0KHZ")
	self.device:write(":SENS:FREQ:STAR 10.0KHZ")
	self.device:write(":DISP:WIND:TRAC: Y:RLEV 90.00")
	self.device:write(":TRACE1:MODE WRIT")
	
	self.device:write(":SWEEP:TIME?")
	ret=self.device:read(buff,256)
	str = ffi.string(buff)
	delay = tonumber(str)
	--print (delay)

	self.device:write(":INIT:IMM;")
	self.device:write("*OPC?")
	
	for names = 1, 3 do
		sleep(delay*1000)
		self.device:read(buff,256)
		str = ffi.string(buff)
		if str ~= nil then
			break
		end
	end
	
	self.device:write(":TRAC:DATA? TRACE1")
	
	local preamble  = ffi.new("uint8_t[2]") 
	
	ret=self.device:read(preamble,2)
	str = ffi.string(preamble)
	--print(	string.format(" preamble %s  ", str) )
	--print (ret.ret)
	
	local byte_count=tonumber(str:sub(2))
	--print(byte_count)
	local bytes=ffi.new("int8_t[?]",byte_count+1) 
	
	ret=self.device:read(bytes,byte_count)
	str = ffi.string(bytes)
	--print(	string.format(" byte count %s  ", str) )
	curve_bytes = tonumber(str)
	--print (tonumber(str))
	
	curve   = ffi.new("int8_t[?]",curve_bytes) 
	ret=self.device:read(curve,curve_bytes)
	
	local byte_count=tonumber(curve_bytes)
	print(byte_count)
	data = ffi.cast("float*", curve)
	
	for i = 0 , (curve_bytes/4) - 1 do
		intermediate = tonumber(data[i]) * 1.0
		print(intermediate)
		--ffi.C.printf("%f\n",data[i])
		--print( intermediate) 
	end
end

function rs_fsvr:marker(o) -- for lack of a better argument name
    local ret = {}
	
end

function rs_fsvr:stop(setting)
	self.device:write("FB "  .. format_value(setting ,'HZ'))
end

function rs_fsvr:start(setting)
	self.device:write("FA "  .. format_value(setting ,'HZ'))
end

function rs_fsvr:raw(setting)
	self.device:write(setting)
end

function rs_fsvr:close(setting)
	self.device:close()
end


return rs_fsvr