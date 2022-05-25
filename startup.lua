-- Anti Termination Code
local oldPull = os.pullEvent;
os.pullEvent = os.pullEventRaw;
-- Anti Termination Code

local util = require("system.utility")

-- Anti Termination Code
os.pullEvent = oldPull;
-- Anti Termination Code
shell.openTab("system/turtleRemoteControl.lua")
shell.openTab("system/receiveFile.lua")
shell.openTab("system/receiveCommand.lua")
shell.run("system/bootup_sequence")