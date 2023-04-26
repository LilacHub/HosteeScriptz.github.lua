local keys = {
    "ARKHALIS-DWETRLOAWOBP", --// Arkhalis
    "ARKHALIS-VQCNYSIPDRSA" --// OWNER
}

local counter = 1
local keyCheck
for i,v in pairs(keys) do
    if counter == #keys then
    --game.Players.LocalPlayer:Kick("Please Use Correct Key")
    keys = ""
        print("no")
    else
        if v == _G.Key then
            --Whitelisted!
            print("Successfully whitelisted!")
            keyCheck = _G.Key
            keys = ""
        else
            counter = counter +1
        end
    end
end
