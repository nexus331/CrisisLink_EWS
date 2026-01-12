-- Variables --
local version = 1.2
local protocol = "clpv2"
local red_output = "left"

-- Software Init --
local modem = peripheral.find("modem", rednet.open)
shell.run("clear")
print("Crisislink Emergency Warning System")
print("Software Version: ", version)
sleep(3)

-- Functions --

local function Missile_Warning()
rednet.broadcast("E1", protocol)
term.write("Missile Warning Emergency Code Sent")
textutils.slowPrint("Crisislink Emergency Warning System Activated")
end

local function Attack_Warning()
rednet.broadcast("E2", protocol)
term.write("Attack Warning Emergency Code Sent")
textutils.slowPrint("Crisislink Emergency Warning System Activated")
end

local function Evacuation_Order()
rednet.broadcast("E3", protocol)
term.write("Evacuation Order Emergency Code Sent")
textutils.slowPrint("Crisislink Emergency Warning System Activated")
end

local function Weather_Alert()
rednet.broadcast("E4", protocol)
term.write("Missile Warning Emergency Code Sent")
textutils.slowPrint("Crisislink Emergency Warning System Activated")
end

-- Main Code -- 
shell.run("clear")

print ("Please Select your Emergency Code")
print("[E1] Missile Warning")
print("[E2] Attack Warning")
print("[E3] Evacuation Order")
print("[E4] Weather Alert")
local option = io.read("Selection: ")

if option == "E1" then
    Missile_Warning()
elseif option == "E2" then
    Attack_Warning()
elseif option == "E3" then
    Evacuation_Order()
elseif option == "E4" then
    Weather_Alert()
else 
    print("Emergency Code does not exist.")
end
