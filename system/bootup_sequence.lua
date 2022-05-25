-- Anti Termination Code
local oldPull = os.pullEvent;
os.pullEvent = os.pullEventRaw;
-- Anti Termination Code

local temp = 11
local temp2 = 3
local util = require("utility")
util.title("Bootup")
term.setCursorPos(1,13)

while temp2 > 0 do

    while temp > 0 do
        term.write("|")
        temp = temp - 1
        sleep(0.1)
    end
    temp2 = temp2 - 1
    temp = 11
    sleep(0.1)
    term.setCursorPos(1,12)
    term.clearLine()
end
-- Any code that needs to be ran for the bootup

util.title("Lua Terminal")

-- Anti Termination Code
os.pullEvent = oldPull;
-- Anti Termination Code