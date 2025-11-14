-- Load Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Mscuaz Hub | Silly Jujutsu Randomizer",
    LoadingTitle = "Mscuaz Hub",
    LoadingSubtitle = "By @Mscuaz Official",
    ConfigurationSaving = {
        Enabled = false
    },
    KeySystem = false
})

-- // Moveset Tab
local MovesetTab = Window:CreateTab("Movesets", 128185233852701)

local MovesetSection = MovesetTab:CreateSection("Movesets")

MovesetTab:CreateButton({
    Name = "Mscuaz Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Mscuaz-Moveset.txt"))()
    end
})

MovesetTab:CreateButton({
    Name = "Yuta Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Yuta-Moveset.lua"))()
    end
})

MovesetTab:CreateButton({
    Name = "Unsealed Gojo Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Unsealed-Gojo-Moveset.lua"))()
    end
})

MovesetTab:CreateButton({
    Name = "Shinjuku Yuji Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Shinjuku-Yuji-Moveset.lua"))()
    end
})

MovesetTab:CreateButton({
    Name = "Heian Era Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Heain-Era-Moveset.lua"))()
    end
})

MovesetTab:CreateButton({
    Name = "Demon Killer Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Demon-Killer-Moveset"))()
    end
})

MovesetTab:CreateButton({
    Name = "Jun Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Jun-Moveset"))()
    end
})

MovesetTab:CreateButton({
    Name = "The Honoured Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/The-Honoured-Moveset.lua"))()
    end
})

MovesetTab:CreateButton({
    Name = "Silli Moveset",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gwnrdt/Silly-Jujutsu-Randomizer/refs/heads/main/Silli-Moveset"))()
    end
})

-- // Extra Skills
local SkillSection = MovesetTab:CreateSection("Extra Skills")

MovesetTab:CreateButton({
    Name = "Escape Player",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.rabbitescape:FireServer()
    end
})

MovesetTab:CreateButton({
    Name = "Aura Player",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.vloodarya:FireServer()
    end
})

-- // RUN & HIT TAB
local RunTab = Window:CreateTab("Run & Hit", 128185233852701)
local RunSection = RunTab:CreateSection("Running or Hit")

RunTab:CreateButton({
    Name = "Dash",
    Callback = function()
        local player = game.Players.LocalPlayer
        if player then
            local args = { player }
            game:GetService("ReplicatedStorage").DashFolder.dashdmg:FireServer(unpack(args))
            print("[Dash] Used by:", player.Name)
        end
    end
})

RunTab:CreateButton({
    Name = "Overtide",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.overtide:FireServer()
        print("[Overtide] Activated")
    end
})
