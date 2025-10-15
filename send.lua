local message
rednet.open("back")

while true do 
print("Type your Message")
message = io.read()

rednet.send(1, message)
term.write("Message Sent")
end