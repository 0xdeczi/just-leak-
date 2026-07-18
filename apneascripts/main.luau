-- dont use chat gpt obfuscator 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/topitbopit/dollarware/main/library.lua"))()

local Window = Library:newWindow({
    ['text'] = 'cureware | drone war | t.me/bvbvbvbbvbudbvb',
    ['size'] = Vector2.new(550, 376),
    ['position'] = Vector2.new(200, 200),
    ['theme'] = 'cherry',
    ['rounding'] = true,
    ['smoothDragging'] = true,
    ['autoDisableToggles'] = true,
    ['resize'] = true,
})

local Menu = Window:addMenu({
    ['text'] = 'spawn anything',
})

local Section = Menu:addSection({
    ['text'] = 'drones, rockets, fpv',
    ['side'] = 'auto',
    ['showMinButton'] = false,
})

-- Drone spawn functions
Section:addButton({
    ['text'] = 'spawn shahed-136 black',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("Shahed-136 Black")
end)

Section:addButton({
    ['text'] = 'spawn shahed-136 white',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("Shahed-136 Black")
end)

Section:addButton({
    ['text'] = 'spawn shahed-238',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("shahed 238")
end)

Section:addButton({
    ['text'] = 'spawn fp1',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("fp1")
end)

Section:addButton({
    ['text'] = 'spawn fpv interceptor',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("interceptor")
end)

Section:addButton({
    ['text'] = 'spawn fpv drone',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("fpv")
end)

Section:addButton({
    ['text'] = 'spawn fpv lancet',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("romaska")
end)

Section:addButton({
    ['text'] = 'spawn beta fpv',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("newfpv")
end)

Section:addButton({
    ['text'] = 'spawn flamingo',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("flamingo")
end)

Section:addButton({
    ['text'] = 'spawn geran-5',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("geran5")
end)

Section:addButton({
    ['text'] = 'spawn gerbera',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("gerbera")
end)

Section:addButton({
    ['text'] = 'spawn kalibr',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("kalibr")
end)

Section:addButton({
    ['text'] = 'spawn molniya',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("molniy")
end)

Section:addButton({
    ['text'] = 'spawn italmas',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawndrone:FireServer("italmas")
end)

local CarsMenu = Window:addMenu({
    ['text'] = 'cars and bus',
})

local CarsSection = CarsMenu:addSection({
    ['text'] = 'cars and bus',
    ['side'] = 'auto',
    ['showMinButton'] = false,
})

CarsSection:addButton({
    ['text'] = 'spawn car',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawncar:FireServer("car")
end)

CarsSection:addButton({
    ['text'] = 'spawn big car',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawncar:FireServer("plc")
end)

CarsSection:addButton({
    ['text'] = 'spawn pkm car',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawncar:FireServer("pkm car")
end)

CarsSection:addButton({
    ['text'] = 'spawn bus',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game:GetService("ReplicatedStorage").spawncar:FireServer("bus")
end)

local TeleportMenu = Window:addMenu({
    ['text'] = 'teleport',
})

local TeleportSection = TeleportMenu:addSection({
    ['text'] = 'teleport',
    ['side'] = 'auto',
    ['showMinButton'] = false,
})

TeleportSection:addButton({
    ['text'] = 'tp to admin room',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.launchsetblue.console.CFrame + Vector3.new(0, 1, 0)
end)

TeleportSection:addButton({
    ['text'] = 'tp to defenders spawn',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.safing.safe.CFrame + Vector3.new(0, 1, 0)
end)

TeleportSection:addButton({
    ['text'] = 'tp to attackers spawn',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CGrade = workspace.safing.safe1.CFrame + Vector3.new(0, 1, 0)
end)

TeleportSection:addButton({
    ['text'] = 'tp to admin room 2',
    ['style'] = 'small',
})['onClick']:bindToEvent(function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.specroom.fpvses.CFrame + Vector3.new(0, 1, 0)
end)
