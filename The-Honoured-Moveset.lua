game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("gojoult"):FireServer()
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

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("leepselock"):FireServer()
    wait()
    wait()
end

local tool = Instance.new("Tool")
tool.Name = "Blackflash Of The Honoured"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("reversalrecoil"):FireServer()
    wait()
    wait()
end

local tool = Instance.new("Tool")
tool.Name = "Maximum Red"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("rebound"):FireServer()
    wait()
    wait()
end

local tool = Instance.new("Tool")
tool.Name = "Honour Of The Strongest"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Murasaki"):FireServer()
    wait()
    wait()
end

local tool = Instance.new("Tool")
tool.Name = "Imaginary : Purple"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)

local function activateScript()
    local player = game.Players.LocalPlayer
    local screenGui = Instance.new("ScreenGui")
    screenGui.ResetOnSpawn = false
    screenGui.Parent = player:WaitForChild("PlayerGui")
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 0.1, 0)
    textLabel.Position = UDim2.new(0, 0, 0.4, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextScaled = true
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = screenGui
    local messages = {
        "Nine Ropes",
        "Polarized Light",
        "Between Front And Back",
        "Hollow",
        "Purple"
    }
    for _, msg in ipairs(messages) do
        textLabel.Text = msg
        task.wait(1)
    end
    textLabel.Text = ""
    task.wait(0)
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("One"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("One"):FireServer()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("One"):FireServer()
    wait()
    wait()
end

local tool = Instance.new("Tool")
tool.Name = "Hollow Nuke"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UnlimitedVoid"):FireServer()
    wait()
    wait()
end

local function activateScript()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("suypersigmadomain"):FireServer()
end

local tool = Instance.new("Tool")
tool.Name = "Domain"
tool.RequiresHandle = false
tool.Parent = game.Players.LocalPlayer:WaitForChild("Backpack")
tool.Activated:Connect(activateScript)
