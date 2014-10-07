
local ffi = require("ffi")
local math = require("math")

ffi.cdef[[
void Sleep(int ms);
int printf(const char *fmt, ...);
]]
function sleep(ms)
    ffi.C.Sleep(ms)
end
local vclass = require 'vclass'

local fake = {}

fake.__index = fake

function fake:new (o)
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
	setmetatable(inst, fake)
	return inst
end

function fake:wait_esr()
	self.device:write("*ESR?")
	local buff  = ffi.new("uint8_t[256]") 
	while true do
		self.device:read(buff,255)
		str = ffi.string(buff)
		
		--print (tonumber(str))
		if tonumber(str) == 0 then
			sleep(1000)
			break
		end
		
	end
end

function fake:bus_init()
	
	
	fake:wait_esr(self)
	sleep(5000)
end

return fake