local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- ========================================================
-- CLEAN MINIMALIST INTERFACE DESIGN
-- ========================================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "FlingControllerUI"
ScreenGui.Parent = CoreGui:FindFirstChild("RobloxGui") or CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 240, 0, 180)
MainFrame.Position = UDim2.new(0.5, -120, 0.4, -90)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 8)
Corner.Parent = MainFrame

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "🚗 PREDICTIVE FLING CONTROLLER"
TitleLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.TextSize = 14
TitleLabel.Parent = MainFrame

local UserInput = Instance.new("TextBox")
UserInput.Size = UDim2.new(0, 200, 0, 35)
UserInput.Position = UDim2.new(0.5, -100, 0, 40)
UserInput.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
UserInput.BorderSizePixel = 0
UserInput.Text = ""
UserInput.PlaceholderText = "Enter target username..."
UserInput.TextColor3 = Color3.fromRGB(255, 255, 255)
UserInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
UserInput.Font = Enum.Font.SourceSans
UserInput.TextSize = 14
UserInput.Parent = MainFrame

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 5)
InputCorner.Parent = UserInput

local ActionButton = Instance.new("TextButton")
ActionButton.Size = UDim2.new(0, 200, 0, 35)
ActionButton.Position = UDim2.new(0.5, -100, 0, 85)
ActionButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
ActionButton.BorderSizePixel = 0
ActionButton.Text = "HUNT & FLING"
ActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionButton.Font = Enum.Font.SourceSansBold
ActionButton.TextSize = 14
ActionButton.Parent = MainFrame

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 5)
ButtonCorner.Parent = ActionButton

local ResetButton = Instance.new("TextButton")
ResetButton.Size = UDim2.new(0, 200, 0, 35)
ResetButton.Position = UDim2.new(0.5, -100, 0, 130)
ResetButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
ResetButton.BorderSizePixel = 0
ResetButton.Text = "PANIC RESET"
ResetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetButton.Font = Enum.Font.SourceSansBold
ResetButton.TextSize = 12
ResetButton.Parent = MainFrame

local ResetCorner = Instance.new("UICorner")
ResetCorner.CornerRadius = UDim.new(0, 5)
ResetCorner.Parent = ResetButton

-- ========================================================
-- MECHANICS EXECUTION LOGIC
-- ========================================================
local currentConnection = nil

local function findPartialPlayer(name)
    for _, p in pairs(Players:GetPlayers()) do
        if p.Name:lower():sub(1, #name) == name:lower() or p.DisplayName:lower():sub(1, #name) == name:lower() then
            return p
        end
    end
    return nil
end

ActionButton.MouseButton1Click:Connect(function()
    if currentConnection then
        currentConnection:Disconnect()
        currentConnection = nil
        ActionButton.Text = "HUNT & FLING"
        ActionButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        return
    end

    local localPlayer = Players.LocalPlayer
    local localChar = localPlayer.Character
    local localHumanoid = localChar and localChar:FindFirstChildOfClass("Humanoid")

    local car = nil
    if localHumanoid and localHumanoid.SeatPart then
        local obj = localHumanoid.SeatPart
        while obj and obj.Parent ~= workspace:FindFirstChild("CarContainer") and obj.Parent ~= workspace do
            obj = obj.Parent
        end
        if obj and obj.Parent == workspace:FindFirstChild("CarContainer") then
            car = obj
        end
    else
        ActionButton.Text = "SIT IN A CAR FIRST!"
        task.wait(1.5)
        ActionButton.Text = "HUNT & FLING"
        return
    end

    if not car then
        ActionButton.Text = "CAR LAYER DETECT FAILED"
        task.wait(1.5)
        ActionButton.Text = "HUNT & FLING"
        return
    end

    local wheelsFolder = car:FindFirstChild("Wheels")
    local wheel = wheelsFolder and wheelsFolder:GetChildren()[4]

    local targetPlayer = findPartialPlayer(UserInput.Text)
    local targetChar = targetPlayer and targetPlayer.Character

    if not targetChar or not targetChar:FindFirstChild("HumanoidRootPart") or not wheel then
        ActionButton.Text = "TARGET NOT FOUND"
        task.wait(1.5)
        ActionButton.Text = "HUNT & FLING"
        return
    end

    local targetRoot = targetChar.HumanoidRootPart
    local localRoot = localChar.HumanoidRootPart
    local targetHumanoid = targetChar:FindFirstChildOfClass("Humanoid")

    ActionButton.Text = "STOP HUNTING (ACTIVE)"
    ActionButton.BackgroundColor3 = Color3.fromRGB(230, 140, 0)
    
    local predictionScale = 0.22 

    currentConnection = RunService.Heartbeat:Connect(function()
        -- DEATH & VALIDITY CHECK
        if not targetChar or not targetRoot or not wheel or not car or not localChar or not localRoot 
           or (targetHumanoid and targetHumanoid.Health <= 0) 
           or (localHumanoid and localHumanoid.Health <= 0) then
            
            if currentConnection then currentConnection:Disconnect() end
            currentConnection = nil
            ActionButton.Text = "HUNT & FLING"
            ActionButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
            return
        end

        -- Disable local collisions
        for _, part in pairs(localChar:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end

        -- CALCULATE LATENCY INTERPOLATION PREDICTION
        local targetVelocity = targetRoot.AssemblyLinearVelocity
        local predictedPosition = targetRoot.Position + (targetVelocity * predictionScale)
        local predictedCFrame = CFrame.new(predictedPosition) * (targetRoot.CFrame - targetRoot.Position)

        -- TOUGHNESS / TOUCH CHECK: Calculate edge-to-edge distance between weapon wheel and target torso
        local actualDistance = (wheel.Position - targetRoot.Position).Magnitude
        local touchThreshold = (wheel.Size.Y / 2) + (targetRoot.Size.Y / 2) + 0.5 -- Dynamic size radius check

        if actualDistance <= touchThreshold then
            -- EXACT TOUCHING POINT: Force instant high velocity collision
            wheel.AssemblyAngularVelocity = Vector3.new(150000, 150000, 150000)
            wheel.AssemblyLinearVelocity = Vector3.new(150000, 150000, 150000)
        else
            -- GLUED TRACKING MODE: Fast tracking speed without physics breaking velocities
            wheel.AssemblyAngularVelocity = Vector3.new(8000, 8000, 8000)
            wheel.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        end

        -- Snap position based entirely on predicted vectors
        localRoot.CFrame = predictedCFrame * CFrame.new(0, -1.5, 0)
        localRoot.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
        wheel.CFrame = predictedCFrame
    end)
end)



ResetButton.MouseButton1Click:Connect(function()
    if currentConnection then
        currentConnection:Disconnect()
        currentConnection = nil
        ActionButton.Text = "HUNT & FLING"
        ActionButton.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    end
    
    local localChar = Players.LocalPlayer.Character
    local localHumanoid = localChar and localChar:FindFirstChildOfClass("Humanoid")
    if localHumanoid then
        localHumanoid.Health = 0
    end
end)
