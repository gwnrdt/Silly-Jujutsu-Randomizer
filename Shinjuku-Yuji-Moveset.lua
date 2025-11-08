local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()

local function deleteAllTools()
    for _, tool in ipairs(backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool:Destroy()
        end
    end

    for _, tool in ipairs(character:GetChildren()) do
        if tool:IsA("Tool") then
            tool:Destroy()
        end
    end
end

deleteAllTools()

local function createCooldownTool(name, activateFunction, initialCooldown)
    local tool = Instance.new("Tool")
    tool.Name = name
    tool.RequiresHandle = false
    tool.Parent = backpack
    local isCooldown = false

    tool.Activated:Connect(function()
        if isCooldown then return end
        isCooldown = true
        activateFunction()

        -- Cooldown loop
        for i = initialCooldown, 0, -0.1 do
            tool.Name = name .. " (" .. string.format("%.1f", i) .. "s)"
            task.wait(0.1)
        end

        -- Reset tool name after cooldown ends
        tool.Name = name
        isCooldown = false
    end)
end

-- Tool functions with cooldowns
createCooldownTool("Black Flash Wrath", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local remoteEvent1 = replicatedStorage.Ellen.Yuji.RemoteEvent
    local remoteEvent2 = replicatedStorage.Ellen.Yuji.RemoteEvent2
    local remoteEvent4 = replicatedStorage.Ellen.Yuji.RemoteEvent4

    remoteEvent1:FireServer()

    for i = 1, 3 do
        remoteEvent2:FireServer()
        task.wait(0.5) -- 0.5s delay
    end

    remoteEvent4:FireServer()
end, 3.7) -- Initial cooldown: 3.7 seconds

createCooldownTool("Piercing Beatdown", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    replicatedStorage.Yuji.Remotes.Event2:FireServer()
    task.wait(1) -- 1-second delay
    replicatedStorage.Remotes.beam:FireServer()
end, 3.7) -- Initial cooldown: 3.7 seconds

createCooldownTool("Flashing Kick", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    replicatedStorage.Kj.Remotes:FindFirstChild("Sweep Swift"):FireServer()
    replicatedStorage.Kiryu.Remotes.Dropkick:FireServer()
    replicatedStorage.Ellen.Yuji.RemoteEvent:FireServer()
end, 3.6) -- Initial cooldown: 3.6 seconds

createCooldownTool("Dismantling Rush", function()
    local replicatedStorage = game:GetService("ReplicatedStorage")
    replicatedStorage.Kj.Remotes:FindFirstChild("Sweep Swift"):FireServer()
    replicatedStorage.sukuna.remotes.rush:FireServer()
    replicatedStorage.Yuji.Remotes.Event2:FireServer()

    task.wait(1) -- 1-second delay

    replicatedStorage.sukuna.remotes.dismantle:FireServer()
    replicatedStorage.sukuna.remotes.dismantle:FireServer()
end, 5) -- Initial cooldown: 5 seconds
