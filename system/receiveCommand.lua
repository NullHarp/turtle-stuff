local util = require("utility")

rednet.open(util.modemSide)

util.title("Turtle Command Receive")
while true do
    id, message = rednet.receive(util.standardProtocol)
    if message == "COMMAND" then
        print("Received a command.")
        sleep(0.1)
        id2, message2 = rednet.receive(util.standardProtocol)
        sleep(0.1)
        print("Command file name is "..message2)
        sleep(0.1)
        print("Running Command File")
        shell.openTab(message2)
    end
end