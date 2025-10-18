shell.run("clear")
print("Welcome to the CrisisLink Installer")
print("Copyright: CraftNet Corp. 2025")

textutils.slowPrint("Please Select the Edition you wish to Install.")
print("[1] CrisisLink Server")
print("[2] CrisisLink Client")

local input = read()
if input == "1" then
    textutils.slowPrint("Intalling CrisisLink Server")
    shell.run("wget https://raw.githubusercontent.com/nexus331/CrisisLink_EWS/refs/heads/main/CrisisLink/clserver.lua")
elseif input == "2" then
    textutils.slowPrint("Installing CrisisLink Client")
    shell.run("wget https://raw.githubusercontent.com/nexus331/CrisisLink_EWS/refs/heads/main/CrisisLink/clclient.lua")
end