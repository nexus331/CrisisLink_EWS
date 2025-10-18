local protocol, message

local modem = peripheral.find("modem", rednet.open)
shell.run("clear")
print ("CrisisLink Emergency Warning System")
print("Please Type the Following Emergency Code")
textutils.slowPrint("ACT-EWS")

while true do
message = io.read()

sleep(0.5)
rednet.broadcast(message, "clpv1")
term.write("Emergency Code Sent")
textutils.slowPrint("Crisislink Emergency Warning System Activated")
sleep(4)
shell.run("clear")
print ("CrisisLink Emergency Warning System")
print("Please Type the Following Emergency Code")
textutils.slowPrint("ACT-EWS")
end
