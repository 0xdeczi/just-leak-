-- ShinaBratokArsenal v2.0 by good [2026]
-- Aimbot + ESP + Inf Ammo + No Recoil + Team Check + Wall Check

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- ==================== GUI ====================
local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui
gui.Name = "ShinaBratokArsenal"

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 230, 0, 250)
frame.Position = UDim2.new(0, 10, 0, 100)
frame.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
frame.BorderSizePixel = 0
frame.Draggable = true
frame.Active = true
frame.Parent = gui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
Instance.new("UIStroke", frame).Thickness = 2
frame.UIStroke.Color = Color3.fromRGB(255, 100, 0)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(20, 20, 35)
title.Text = "🔫 ShinaBratokArsenal"
title.TextColor3 = Color3.fromRGB(255, 150, 0)
title.Font = Enum.Font.GothamBold
title.TextSize = 13
title.Parent = frame
Instance.new("UICorner", title).CornerRadius = UDim.new(0, 8)

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -10, 0, 20)
statusLabel.Position = UDim2.new(0, 5, 0, 35)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "ShinaBratok | Arsenal God"
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 10
statusLabel.Parent = frame

-- Функция кнопок
local function createToggle(yPos, text, color, callback)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 30)
    btn.Position = UDim2.new(0, 5, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.BorderSizePixel = 0
    btn.Text = text .. ": OFF"
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.AutoButtonColor = false
    btn.Parent = frame
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    
    local state = false
    btn.MouseButton1Click:Connect(function()
        state = not state
        btn.Text = text .. (state and ": ON" or ": OFF")
        btn.BackgroundColor3 = state and color or Color3.fromRGB(50, 50, 50)
        callback(state)
    end)
    return btn
end

-- Флаги
local aimbotActive = false
local espActive = false
local infAmmoActive = false
local noRecoilActive = false
local teamCheckActive = true
local wallCheckActive = true

-- Кнопки
createToggle(60, "🎯 AIMBOT", Color3.fromRGB(255, 100, 0), function(s) aimbotActive = s end)
createToggle(95, "🛡️ TEAM CHECK", Color3.fromRGB(0, 200, 255), function(s) teamCheckActive = s end)
createToggle(130, "🧱 WALL CHECK", Color3.fromRGB(200, 100, 255), function(s) wallCheckActive = s end)
createToggle(165, "👁️ ESP", Color3.fromRGB(0, 150, 255), function(s) espActive = s end)
createToggle(200, "∞ INF AMMO", Color3.fromRGB(255, 200, 0), function(s) infAmmoActive = s end)
createToggle(235, "🔫 NO RECOIL", Color3.fromRGB(0, 200, 100), function(s) noRecoilActive = s end)

-- ==================== TEAM CHECK ====================
local function getPlayerTeam(player)
    if player.Team and LocalPlayer.Team then return player.Team end
    if player.TeamColor and LocalPlayer.TeamColor then return player.TeamColor end
    local teamFolder = player:FindFirstChild("Team") or player:FindFirstChild("team")
    if teamFolder and teamFolder:IsA("StringValue") then return teamFolder.Value end
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local teamStat = leaderstats:FindFirstChild("Team") or leaderstats:FindFirstChild("team")
        if teamStat and teamStat:IsA("StringValue") then return teamStat.Value end
    end
    return nil
end

local function isSameTeam(player)
    if not teamCheckActive then return false end
    local myTeam = getPlayerTeam(LocalPlayer)
    local theirTeam = getPlayerTeam(player)
    if myTeam and theirTeam then return myTeam == theirTeam end
    if player.TeamColor and LocalPlayer.TeamColor then return player.TeamColor == LocalPlayer.TeamColor end
    return false
end

-- ==================== WALL CHECK ====================
local function isVisible(targetPosition)
    if not wallCheckActive then return true end
    local myChar = LocalPlayer.Character
    if not myChar then return false end
    local myHead = myChar:FindFirstChild("Head")
    if not myHead then return false end
    
    local rayOrigin = myHead.Position
    local rayDirection = (targetPosition - rayOrigin).Unit * 500
    local rayParams = RaycastParams.new()
    rayParams.FilterDescendantsInstances = {LocalPlayer.Character}
    rayParams.FilterType = Enum.RaycastFilterType.Blacklist
    
    local rayResult = Workspace:Raycast(rayOrigin, rayDirection, rayParams)
    if rayResult then
        local hitPart = rayResult.Instance
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                if hitPart:IsDescendantOf(player.Character) then return true end
            end
        end
        return false
    end
    return true
end

-- ==================== AIMBOT ====================
local function getClosestEnemy()
    local myChar = LocalPlayer.Character
    if not myChar then return nil end
    local myHead = myChar:FindFirstChild("Head")
    if not myHead then return nil end
    
    local closest = nil
    local closestDist = 500
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and not isSameTeam(player) then
            local head = player.Character:FindFirstChild("Head")
            if head and isVisible(head.Position) then
                local screenPos, onScreen = Camera:WorldToScreenPoint(head.Position)
                if onScreen then
                    local mousePos = UserInputService:GetMouseLocation()
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    if dist < closestDist then
                        closestDist = dist
                        closest = head
                    end
                end
            end
        end
    end
    return closest
end

-- ==================== ESP ====================
local espHighlights = {}

local function updateESP()
    for _, h in pairs(espHighlights) do pcall(function() h:Destroy() end) end
    espHighlights = {}
    if not espActive then return end
    
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local highlight = Instance.new("Highlight")
            highlight.Adornee = player.Character
            highlight.FillTransparency = 0.5
            highlight.OutlineTransparency = 0
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = game.CoreGui
            
            if teamCheckActive and isSameTeam(player) then
                highlight.OutlineColor = Color3.fromRGB(0, 255, 100)
                highlight.FillColor = Color3.fromRGB(0, 200, 50)
            else
                highlight.OutlineColor = Color3.fromRGB(255, 100, 0)
                highlight.FillColor = Color3.fromRGB(255, 50, 50)
            end
            table.insert(espHighlights, highlight)
        end
    end
end

-- ==================== ГЛАВНЫЙ ЦИКЛ ====================
RunService.RenderStepped:Connect(function()
    pcall(function()
        if aimbotActive then
            local target = getClosestEnemy()
            if target then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, target.Position)
            end
        end
        
        if infAmmoActive then
            local char = LocalPlayer.Character
            if char then
                local tool = char:FindFirstChildWhichIsA("Tool")
                if tool then
                    local ammo = tool:FindFirstChild("Ammo") or tool:FindFirstChild("ammo")
                    if ammo and ammo:IsA("IntValue") then ammo.Value = 999 end
                end
            end
        end
        
        if noRecoilActive then
            local char = LocalPlayer.Character
            if char then
                local hum = char:FindFirstChild("Humanoid")
                if hum then hum.AutoRotate = true end
            end
        end
        
        statusLabel.Text = string.format(
            "ShinaBratok | Aim:%s Team:%s Wall:%s ESP:%s",
            aimbotActive and "ON" or "OFF",
            teamCheckActive and "ON" or "OFF",
            wallCheckActive and "ON" or "OFF",
            espActive and "ON" or "OFF"
        )
    end)
end)

task.spawn(function()
    while gui.Parent do
        updateESP()
        task.wait(2)
    end
end)

print("[ShinaBratok] Arsenal God v2.0 загружен!")
print("[ShinaBratok] Aimbot + ESP + Inf Ammo + No Recoil + Team Check + Wall Check")
