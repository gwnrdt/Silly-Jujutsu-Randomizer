local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local character = player.Character or player.CharacterAdded:Wait()

-- Function to delete all tools and add Heian era
local function setupHeianEra()
    -- Delete all tools
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

    -- Add Heian era tool
    local heianTool = Instance.new("Tool")
    heianTool.Name = "Heian Era"
    heianTool.RequiresHandle = false
    heianTool.Parent = backpack

    -- Heian era activation logic
    heianTool.Activated:Connect(function()
        -- Delete Heian era tool
        heianTool:Destroy()

        -- Add other tools with specific functionality
        local function addTool(name, activateFunction)
            local tool = Instance.new("Tool")
            tool.Name = name
            tool.RequiresHandle = false
            tool.Parent = backpack
            tool.Activated:Connect(activateFunction)
        end

        addTool("Menacing attack", function()
            for _ = 1, 7 do
                game:GetService("ReplicatedStorage").Remotes.ballz3:FireServer()
            end
        end)

        addTool("Absolute LAG Shrine", function()
            for _ = 1, 7 do
                game:GetService("ReplicatedStorage").KJ.Remotes.Shrine:FireServer()
            end
        end)

        addTool("Brutal Rush", function()
            for _ = 1, 10 do
                game:GetService("ReplicatedStorage").sukuna.remotes.rush:FireServer()
            end
            for _ = 1, 2 do
                game:GetService("ReplicatedStorage").sukuna.remotes.suplex:FireServer()
            end
        end)

        addTool("Bloody Show", function()
            for _ = 1, 9 do
                game:GetService("ReplicatedStorage").sukuna.remotes.cleave:FireServer()
            end
            game:GetService("ReplicatedStorage").randommoveset.remotes.ellen:FireServer()
        end)
    end)
end

-- Run the setup to add Heian Era
setupHeianEra()
