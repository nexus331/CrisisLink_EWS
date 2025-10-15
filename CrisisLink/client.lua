local id, message

local modem = peripheral.find("modem", rednet.open)

print ("CrisisLink Emergency Warning System")
print("Please Type the Following Emergency Code")
textutils.slowPrint("ACT-EWS")

while true do
message = io.read()

sleep(0.5)
rednet.send(1, message)
term.write("Message Sent")
end
