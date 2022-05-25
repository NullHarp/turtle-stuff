rednet.open("back")

local turtleProtocol,turtleID = ...

turtleID = tonumber(turtleID)

while true do
    if turtleID == nil then
        
        local event, key = os.pullEvent("key")
        if key == keys.w then
            rednet.broadcast("W",turtleProtocol)
        elseif key == keys.a then
            rednet.broadcast("A",turtleProtocol)
        elseif key == keys.s then
            rednet.broadcast("S",turtleProtocol)
        elseif key == keys.d then
            rednet.broadcast("D",turtleProtocol)
        elseif key == keys.space then
            rednet.broadcast("Space",turtleProtocol)
        elseif key == keys.c then
            rednet.broadcast("C",turtleProtocol)
        end
    else
        local event, key = os.pullEvent("key")
        if key == keys.w then
            rednet.send(turtleID,"W",turtleProtocol)
        elseif key == keys.a then
            rednet.send(turtleID,"A",turtleProtocol)
        elseif key == keys.s then
            rednet.send(turtleID,"S",turtleProtocol)
        elseif key == keys.d then
            rednet.send(turtleID,"D",turtleProtocol)
        elseif key == keys.space then
            rednet.send(turtleID,"Space",turtleProtocol)
        elseif key == keys.c then
            rednet.send(turtleID,"C",turtleProtocol)
        end
    end
end
