
local function DownloadedFile(file_name,directory)
    if directory == nil then
        directory = "/"
    end
    local file_code = http.get("https://raw.githubusercontent.com/NullHarp/turtle-stuff/main/"..file_name)
    file_code = file_code.readAll()
    local file = fs.open(directory..file_name,"w")
    file.write(file_code)
    file.close()
    print("Successfuly downloaded and saved "..file_name)
end

print("Drone installation program engaged")
sleep(1)
fs.makeDir("system/")
print("Created system directory")
sleep(1)

DownloadedFile("utility.lua","system/")
sleep(1)
DownloadedFile("startup.lua",nil)
sleep(1)
DownloadedFile("receiveCommand.lua","system/")
sleep(1)
DownloadedFile("receiveFile.lua","system/")
sleep(1)
DownloadedFile("turtleRemoteControl.lua","system/")
sleep(1)
DownloadedFile("bootup_sequence.lua","system/")
print("Final phase of drone install, enter a name.")
print("Name: ")
local name = read()
os.reboot()
