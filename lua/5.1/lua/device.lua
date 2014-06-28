local ffi = require ("ffi")
local socket = require ("socket")

function main()
	local sock1 = socket.tcp()
	local sock2 = socket.tcp()
	local host = '127.0.0.1'
	local port1 = 9001
	local port2 = 9002
	print (type(sock1));print(sock1)
	print (type(sock2));print(sock2)
	--bind to local host ports 9001 and 9002
	local lb1=sock1:bind(host,port1)
	local lb2=sock2:bind(host,port2)
	sock1:listen(5)
	sock2:listen(5)
	
	while true do
        local client1 = sock1:accept()
		
		local client2 = sock2:accept()
		
		--both have to connect.
		print(client1)
		print(client2)
		print ("both have connected")
	end
	--[[
		print("client type is " .. type(client)) 
        local line = client:receive('*line')
		
        if line then
			--print (add_lf(line))
            client:send(add_lf(line))
        end
        client:close()
    end
	--]]
	--ip, port = sock:getsockname()
	--[[
	print("Waiting packets on " .. ip .. ":" .. port .. "...")
	while(1) do

	end
	--]]
end

main()