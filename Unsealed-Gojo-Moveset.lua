local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local backpack = player:WaitForChild("Backpack")

-- Clear existing tools
for _, tool in ipairs(character:GetChildren()) do
    if tool:IsA("Tool") then
        tool:Destroy()
    end
end

for _, tool in ipairs(backpack:GetChildren()) do
    if tool:IsA("Tool") then
        tool:Destroy()
    end
end

local function createCooldownTool(name, activateFunction, cooldown)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = false
    tool.Parent = backpack
    local cooldownValue = Instance.new("NumberValue", tool)
    cooldownValue.Value = 0

    local function startCooldown()
        cooldownValue.Value = cooldown
        while cooldownValue.Value > 0 do
            tool.Name = name .. " (" .. string.format("%.1f", cooldownValue.Value) .. "s)"
            task.wait(0.1)
            cooldownValue.Value -= 0.1
        end
        tool.Name = name
    end

    tool.Activated:Connect(function()
        if cooldownValue.Value > 0 then return end
        activateFunction()
        startCooldown()
    end)
end

-- Define tool actions with their cooldowns
createCooldownTool("Crushing Shockwave", function()
    game:GetService("ReplicatedStorage").KJ.Remotes:FindFirstChild("Collaretal Ruin"):FireServer()
    game:GetService("ReplicatedStorage").KJ.Remotes:FindFirstChild("Collaretal Ruin"):FireServer()
    game:GetService("ReplicatedStorage").KJ.Remotes:FindFirstChild("Collaretal Ruin"):FireServer()
    game:GetService("ReplicatedStorage").sukuna.remotes.cleave:FireServer()
end, 5) -- Cooldown: 5 seconds

createCooldownTool("Crimson Rush", function()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
    game:GetService("ReplicatedStorage").sukuna.remotes.suplex:FireServer()
    task.wait(0.5)
    game:GetService("ReplicatedStorage").KJ.Remotes:FindFirstChild("Collaretal Ruin"):FireServer()
end, 6) -- Cooldown: 6 seconds

createCooldownTool("Eternal Flash", function()
    game:GetService("ReplicatedStorage").Remotes.BlackFlash:FireServer()
    task.wait(2)
    game:GetService("ReplicatedStorage").Remotes.BlackFlash:FireServer()
end, 8) -- Cooldown: 8 seconds

createCooldownTool("Spirit Destroyer", function()
    game:GetService("ReplicatedStorage").Kj.Remotes:FindFirstChild("Sweep Swift"):FireServer()
    game:GetService("ReplicatedStorage").Remotes.Fire2:FireServer()
end, 7) -- Cooldown: 7 seconds

createCooldownTool("Unsealed Honor", function()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
    game:GetService("ReplicatedStorage").Remotes.BlackFlash:FireServer()
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Health = math.max(humanoid.Health - 10, 0)
    end
end, 10) -- Cooldown: 10 seconds
