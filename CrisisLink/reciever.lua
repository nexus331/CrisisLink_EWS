local modem = peripheral.find("modem", rednet.open)
local printer = peripheral.find("printer")
print("CrisisLink EWS Reciever")
print("Scanning for Emergency Code")
while true do

local id,message
repeat

redstone.setOutput("left", true)

id, message = rednet.receive()
until id == 0

textutils.slowPrint(message)
redstone.setOutput("left", false)
textutils.slowPrint("Emergency Warning System Activated")
sleep(100)
redstone.setOutput("left", true)
textutils.slowPrint("Emergency Warning System Deactivated")

end

