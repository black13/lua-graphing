--[[
local socket = require("socket")
host = "127.0.0.1"
port = 9001
if arg then
    host = arg[1] or host
    port = arg[2] or port
end
print("Binding to host '" ..host.. "' and port " ..port.. "...")
--udp = assert(socket.udp())
local sock = socket.tcp()
sock:bind(host, port)
sock:setsockname(host, port)
sock:listen(5)
ip, port = sock:getsockname()
assert(ip, port)
print("Waiting packets on " .. ip .. ":" .. port .. "...")
while true do
        local client = sock:accept()
        local line = client:receive('*line')
        if line then
            client:send(add_lf(line))
        end
        client:close()
end
--]]
local ffi = require ("ffi")
local socket = require ("socket")
local EchoServer = {}
local device = {}

function device:new()
    local o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function device:idn()
	print("the device")
end
--[[
function device:new()
    local o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end
--]]
function device:idn()
	
end

local function add_lf(s)
    if string.sub(s, #s, #s) ~= '\n' then
        return s .. '\n'
    else
        return s
    end
end

function EchoServer:serve_forever()
    local sock = socket.tcp()
    assert(sock:bind(self.host, self.port))
	ip, port = sock:getsockname()
	print("Waiting packets on " .. ip .. ":" .. port .. "...")
    sock:listen(5)
    while true do
        local client = sock:accept()
		print("client type is " .. type(client)) 
        local line = client:receive('*line')
		
        if line then
			--print (add_lf(line))
            client:send(add_lf(line))
        end
        client:close()
    end
end
 
function EchoServer:new(host, port)
    local o = {}
	o.device = device:new()
    o.host = '127.0.0.1'
    o.port = 9001
    setmetatable(o, self)
    self.__index = self
    return o
end

return EchoServer
