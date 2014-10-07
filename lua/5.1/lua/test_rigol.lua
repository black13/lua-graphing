--test dsi reciever.
local ffi = require("ffi")

function freq_iter(start,stop,n)
	local step = (stop - start) / n
	local i=0
	return function()
		local freq = start + step*i
		i=i+1
		if i > n then 
			return nil
		end
		return freq
	end
end

local function main()
local analyzer = require 'rigol'

local ana = analyzer:new{connect='USB0::0x1AB1::0x0960::DSA8A134700019::INSTR'}

ana:bus_init()
ana:trace{}
ana:close()
	
end
main()
