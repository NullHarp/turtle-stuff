local util = require("utility")

rednet.open("right")

util.title("Turtle File Receive")
while true do
    id, message = rednet.receive(util.standardProtocol)
    if message == "RECEIVE" then
        print("Received a file.")
        sleep(0.1)
        id2, message2 = rednet.receive(util.standardProtocol)
        sleep(0.1)
        local file = fs.open(message2,"w")
        id3, message3 = rednet.receive(util.standardProtocol)
        print("File name is "..message2)
        sleep(0.1)
        file.write(message3)
        file.close()
        print("Saved File")
    end
end