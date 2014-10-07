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
local analyzer = require 'ag_444x'

local ana = analyzer:new{connect='GPIB0::21::INSTR'}

ana:bus_init()
ana:trace{}
ana:close()
	
end
main()
