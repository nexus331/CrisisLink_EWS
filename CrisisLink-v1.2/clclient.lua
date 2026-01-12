-- Variables --
local version = 1.2
local protocol = "clpv2"
local red_output = "left"

-- Main Code -- 
local modem = peripheral.find("modem", rednet.open)


shell.run("clear")
print("CrisisLink EWS Reciever")
print("Software Version:", version)
print("Scanning for Emergency Code")
redstone.setOutput(red_output, true)

while true do

local id, message = rednet.receive(protocol)

print("Emergency Code Recieved:", message)
redstone.setOutput(red_output, false)
textutils.slowPrint("Emergency Warning System Activated")
sleep(100)
redstone.setOutput(red_output, true)
textutils.slowPrint("Emergency Warning System Deactivated")
sleep(4)
shell.run("clear")
print("CrisisLink EWS Reciever")
print("Scanning for Emergency Code")
end
