local modem = peripheral.find("modem", rednet.open)
local printer = peripheral.find("printer")
print("CrisisLink EWS Reciever")
print("Scanning for Emergency Code")
redstone.setOutput("left", true)

while true do


local id, message = rednet.receive("clpv1")
print("Emergency Code Recieved:", message)
redstone.setOutput("left", false)
textutils.slowPrint("Emergency Warning System Activated")
sleep(10)
redstone.setOutput("left", true)
textutils.slowPrint("Emergency Warning System Deactivated")
sleep(4)
shell.run("clear")
print("CrisisLink EWS Reciever")
print("Scanning for Emergency Code")
end