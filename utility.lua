local version = "Alpha"
local standardProtocol = "test"

local function title(title_name)
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(colors.yellow)
    term.write("NU11BOTRIX | "..version)
    term.setCursorPos(1,2)
    term.write(title_name)
    term.setCursorPos(1,4)
    term.setTextColor(colors.white)
end

local function goToCords(x,y,z)

    local facing = getOrientation()
    if facing == 1 then
        turtle.turnRight()
        turtle.turnRight()
    elseif facing == 2 then
        turtle.turnRight()
    elseif facing == 4 then
        turtle.turnLeft()
    end

    sleep(1)
    local currentX,currentY,currentZ = gps.locate()
    local distX = x
    local distY = y
    local distZ = z
    print(distX,distY,distZ)

    if y > currentY then
        while distY > currentY do
            turtle.up()
            distY = distY - 1
        end
    elseif  y < currentY then
        while distY < currentY do
            turtle.down()
            distY = distY + 1
        end
    end

    if distX > currentX then
        while distX > currentX do
            turtle.forward()
            distX = distX - 1
        end
    elseif distX < currentX then
        turtle.turnRight()
        turtle.turnRight()
        while distX < currentX do
            turtle.forward()
            distX = distX + 1
        end
        turtle.turnRight()
        turtle.turnRight()
    end

    if distZ < currentZ then
        turtle.turnLeft()
        while distZ < currentZ do
            turtle.forward()
            distZ = distZ + 1
        end
        turtle.turnRight()
    elseif distZ > currentZ then
        turtle.turnRight()
        while distZ > currentZ do
            turtle.forward()
            distZ = distZ - 1
        end
        turtle.turnLeft()
    end

    local hasFinished = true
    return(hasFinished)
end

function getOrientation()
loc1 = vector.new(gps.locate(2, false))
if not turtle.forward() then
    for j=1,6 do
            if not turtle.forward() then
                    turtle.dig()
         else break end
    end
end
loc2 = vector.new(gps.locate(2, false))
heading = loc2 - loc1
return ((heading.x + math.abs(heading.x) * 2) + (heading.z + math.abs(heading.z) * 3))
end

--[[orientation will be:
-x = 1
-z = 2
+x = 3
+z = 4
This matches exactly with orientation in game, except that Minecraft uses 0 for +z instead of 4.
--]]

return {title = title, version = version, standardProtocol = standardProtocol, goToCords = goToCords, getOrientation = getOrientation}