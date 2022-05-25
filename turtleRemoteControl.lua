local util = require("utility")

util.title("Turtle Remote Control")
while true do
    id, command = rednet.receive(util.standardProtocol)
    if command == "W" then
        if turtle.detect() == true then
            turtle.dig()
        end
        turtle.forward()
    elseif command == "A" then
        turtle.turnLeft()
    elseif command == "S" then
        turtle.back()
    elseif command == "D" then
        turtle.turnRight()
    elseif command == "Space" then
        if turtle.detectUp() == true then
            turtle.digUp()
        end
        turtle.up()
    elseif command == "C" then
        if turtle.detectDown() == true then
            turtle.digDown()
        end
        turtle.down()
    end
end