local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local backpack = player:WaitForChild("Backpack")

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

local function createCooldownTool(name, activateFunction, cooldownTime)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = false
    tool.Parent = backpack
    local cooldownValue = Instance.new("NumberValue", tool)
    cooldownValue.Value = 0

    local function startCooldown()
        cooldownValue.Value = cooldownTime
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

createCooldownTool("Detonate Slash", function()
    game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
    game:GetService("ReplicatedStorage").Remotes.ballz3:FireServer()
    game:GetService("ReplicatedStorage").randommoveset.remotes.ellen:FireServer()
end, 3)

createCooldownTool("No Escape", function()
    game:GetService("ReplicatedStorage").Kj.Remotes:FindFirstChild("Sweep Swift"):FireServer()
    game:GetService("ReplicatedStorage").sukuna.remotes.suplex:FireServer()
end, 1.25)

createCooldownTool("Out Of My Way", function()
    game:GetService("ReplicatedStorage").Kj.Remotes:FindFirstChild("Sweep Swift"):FireServer()
    game:GetService("ReplicatedStorage").Kiryu.Remotes.StylishSweeps:FireServer()
end, 2)

createCooldownTool("Detonate", function()
    for _ = 1, 10 do
        game:GetService("ReplicatedStorage").Remotes.ballz3:FireServer()
        task.wait(0)
    end
    game:GetService("ReplicatedStorage").Ellen.equip5:FireServer()
    task.wait(3)
    game:GetService("ReplicatedStorage").Ellen.equip6:FireServer()
end, 1)
