local StarterGui = game:GetService("StarterGui")
local placeId = game.PlaceId

local gameMap = {    
     BloxFruits = {
        ids = {85211729168715, 79091703265657, 100117331123089, 2753915549, 4442272183, 7449423635},
        raw = "https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main.lua"
    },
    AOTRevolution = {
        ids = {15824912319, 1337949730, 14012874501, 14916516914, 15824912319, 13379349730, 14012874501, 1768873934, 15220308770, 14638336319, 13904207646},
        raw = "https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Aotr.lua"
    },
    BeeSwarm = {
        ids = {1537690962},
        raw = "https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Bss.lua"
    },
    ETFB = {
        ids = {131623223084840},
        raw = "https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/ETFB.lua"
    },
    TheForge = {
        ids = {76558904092080},
        raw = "https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/MainTheForge.lua"
    }
}

for _, data in pairs(gameMap) do
    for _, id in ipairs(data.ids) do
        if id == placeId then
            StarterGui:SetCore("SendNotification", {
                Title = "Dragon Hub",
                Text = "Loading script for this game...",
                Duration = 4
            })
            loadstring(game:HttpGet(data.raw))()
            return
        end
    end
end

StarterGui:SetCore("SendNotification", {
    Title = "Dragon Hub",
    Text = "No script available for this game.",
    Duration = 5
})
