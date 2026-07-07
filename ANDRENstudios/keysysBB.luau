--[[ 
▓█████▄ ▓█████  ██▓     █    ██   ██████  ██▓ ▒█████   ███▄    █ 
▒██▀ ██▌▓█   ▀ ▓██▒     ██  ▓██▒▒██    ▒ ▓██▒▒██▒  ██▒ ██ ▀█   █ 
░██   █▌▒███   ▒██░    ▓██  ▒██░░ ▓██▄   ▒██▒▒██░  ██▒▓██  ▀█ ██▒
░▓█▄   ▌▒▓█  ▄ ▒██░    ▓▓█  ░██░  ▒   ██▒░██░▒██   ██░▓██▒  ▐▌██▒
░▒████▓ ░▒████▒░██████▒▒▒█████▓ ▒██████▒▒░██░░ ████▓▒░▒██░   ▓██░
 ▒▒▓  ▒ ░░ ▒░ ░░ ▒░▓  ░░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░▓  ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ 
 ░ ▒  ▒  ░ ░  ░░ ░ ▒  ░░░▒░ ░ ░ ░ ░▒  ░ ░ ▒ ░  ░ ▒ ▒░ ░ ░░   ░ ▒░
 ░ ░  ░    ░     ░ ░    ░░░ ░ ░ ░  ░  ░   ▒ ░░ ░ ░ ▒     ░   ░ ░ 
   ░       ░  ░    ░  ░   ░           ░   ░      ░ ░           ░ 
    --]] 
local Env = getfenv();
local TweenService = game:GetService("TweenService");
local VRSS_KeySystem = Instance.new("ScreenGui");
VRSS_KeySystem.Name = "VRSS_KeySystem";
VRSS_KeySystem.Parent = v3:WaitForChild("PlayerGui");
VRSS_KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
local Frame = Instance.new("Frame");
Frame.Size = UDim2.new(0, 400, 0, 260);
Frame.Position = UDim2.new(0.5, -200, 0.5, -130);
Frame.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
Frame.BorderSizePixel = 0;
Frame.ZIndex = 100;
Frame.Parent = VRSS_KeySystem;
local UICorner = Instance.new("UICorner");
UICorner.CornerRadius = UDim.new(0, 12);
UICorner.Parent = Frame;
local UIStroke = Instance.new("UIStroke");
UIStroke.Color = Color3.fromRGB(60, 0, 0);
UIStroke.Thickness = 1;
UIStroke.Transparency = 0.5;
UIStroke.Parent = Frame;
local Frame2 = Instance.new("Frame");
Frame2.Size = UDim2.new(1, 0, 0, 50);
Frame2.BackgroundTransparency = 1;
Frame2.ZIndex = 100;
Frame2.Parent = Frame;
local Frame3 = Instance.new("Frame");
Frame3.Size = UDim2.new(1, -20, 0, 1);
Frame3.Position = UDim2.new(0, 10, 0, 49);
Frame3.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
Frame3.BorderSizePixel = 0;
Frame3.ZIndex = 100;
Frame3.Parent = Frame2;
local Frame4 = Instance.new("Frame");
Frame4.Size = UDim2.new(0, 28, 0, 28);
Frame4.Position = UDim2.new(0, 12, 0.5, -14);
Frame4.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
Frame4.BorderSizePixel = 0;
Frame4.ZIndex = 100;
Frame4.Parent = Frame2;
local UICorner2 = Instance.new("UICorner");
UICorner2.CornerRadius = UDim.new(0, 6);
UICorner2.Parent = Frame4;
local TextLabel = Instance.new("TextLabel");
TextLabel.Size = UDim2.new(1, 0, 1, 0);
TextLabel.BackgroundTransparency = 1;
TextLabel.Text = "V";
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
TextLabel.TextSize = 16;
TextLabel.Font = Enum.Font.GothamBlack;
TextLabel.ZIndex = 100;
TextLabel.Parent = Frame4;
local TextLabel2 = Instance.new("TextLabel");
TextLabel2.Size = UDim2.new(0, 250, 1, 0);
TextLabel2.Position = UDim2.new(0, 48, 0, 0);
TextLabel2.BackgroundTransparency = 1;
TextLabel2.Text = "VRSS | Key System";
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255);
TextLabel2.TextSize = 16;
TextLabel2.Font = Enum.Font.GothamBlack;
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left;
TextLabel2.ZIndex = 100;
TextLabel2.Parent = Frame2;
local TextButton = Instance.new("TextButton");
TextButton.Size = UDim2.new(0, 24, 0, 24);
TextButton.Position = UDim2.new(1, -32, 0, 13);
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 48);
TextButton.Text = "X";
TextButton.TextColor3 = Color3.fromRGB(200, 200, 200);
TextButton.TextSize = 12;
TextButton.Font = Enum.Font.GothamBold;
TextButton.BorderSizePixel = 0;
TextButton.ZIndex = 100;
TextButton.Parent = Frame2;
local UICorner3 = Instance.new("UICorner");
UICorner3.CornerRadius = UDim.new(0, 6);
UICorner3.Parent = TextButton;
TextButton.MouseEnter:Connect(function()
    local tween = TweenService:Create(TextButton, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(200, 40, 40)
    });
    tween:Play(); 
end);
TextButton.MouseLeave:Connect(function()
    local tween = TweenService:Create(TextButton, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(40, 40, 48)
    });
    tween:Play(); 
end);
TextButton.MouseButton1Click:Connect(function()
    VRSS_KeySystem:Destroy(); 
end);
local TextBox = Instance.new("TextBox");
TextBox.Size = UDim2.new(1, -30, 0, 42);
TextBox.Position = UDim2.new(0, 15, 0, 60);
TextBox.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
TextBox.Text = "";
TextBox.PlaceholderText = "Enter your key...";
TextBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 110);
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255);
TextBox.TextSize = 14;
TextBox.Font = Enum.Font.GothamMedium;
TextBox.BorderSizePixel = 0;
TextBox.ZIndex = 100;
TextBox.Parent = Frame;
local UICorner4 = Instance.new("UICorner");
UICorner4.CornerRadius = UDim.new(0, 8);
UICorner4.Parent = TextBox;
local UIStroke2 = Instance.new("UIStroke");
UIStroke2.Color = Color3.fromRGB(45, 45, 55);
UIStroke2.Thickness = 1;
UIStroke2.Parent = TextBox;
TextBox.Focused:Connect(function()
    local tween = TweenService:Create(UIStroke2, TweenInfo.new(.2), {
        ["Color"] = Color3.fromRGB(180, 0, 0)
    });
    tween:Play(); 
end);
TextBox.FocusLost:Connect(function()
    local tween = TweenService:Create(UIStroke2, TweenInfo.new(.2), {
        ["Color"] = Color3.fromRGB(45, 45, 55)
    });
    tween:Play(); 
end);
local TextButton2 = Instance.new("TextButton");
TextButton2.Size = UDim2.new(1, -30, 0, 42);
TextButton2.Position = UDim2.new(0, 15, 0, 115);
TextButton2.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
TextButton2.Text = "GET KEY";
TextButton2.TextColor3 = Color3.fromRGB(50, 150, 255);
TextButton2.TextSize = 14;
TextButton2.Font = Enum.Font.GothamBold;
TextButton2.BorderSizePixel = 0;
TextButton2.ZIndex = 100;
TextButton2.Parent = Frame;
local UICorner5 = Instance.new("UICorner");
UICorner5.CornerRadius = UDim.new(0, 8);
UICorner5.Parent = TextButton2;
local UIStroke3 = Instance.new("UIStroke");
UIStroke3.Color = Color3.fromRGB(50, 150, 255);
UIStroke3.Thickness = 1;
UIStroke3.Parent = TextButton2;
TextButton2.MouseEnter:Connect(function()
    local tween = TweenService:Create(TextButton2, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(40, 40, 55)
    });
    tween:Play(); 
end);
TextButton2.MouseLeave:Connect(function()
    local tween = TweenService:Create(TextButton2, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(30, 30, 40)
    });
    tween:Play(); 
end);
TextButton2.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://t.me/HiVRSSbot");
    end;
    r27("Link copied! Open @HiVRSSbot", 3, Color3.fromRGB(50, 150, 255)); 
end);
local TextButton3 = Instance.new("TextButton");
TextButton3.Size = UDim2.new(1, -30, 0, 42);
TextButton3.Position = UDim2.new(0, 15, 0, 170);
TextButton3.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
TextButton3.Text = "CHECK KEY";
TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255);
TextButton3.TextSize = 14;
TextButton3.Font = Enum.Font.GothamBold;
TextButton3.BorderSizePixel = 0;
TextButton3.ZIndex = 100;
TextButton3.Parent = Frame;
local UICorner6 = Instance.new("UICorner");
UICorner6.CornerRadius = UDim.new(0, 8);
UICorner6.Parent = TextButton3;
TextButton3.MouseEnter:Connect(function()
    local tween = TweenService:Create(TextButton3, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(200, 20, 20)
    });
    tween:Play(); 
end);
TextButton3.MouseLeave:Connect(function()
    local tween = TweenService:Create(TextButton3, TweenInfo.new(.2), {
        ["BackgroundColor3"] = Color3.fromRGB(180, 0, 0)
    });
    tween:Play(); 
end);
TextButton3.MouseButton1Click:Connect(function(...)
    Text = TextBox.Text;
    if Text == "" then
        r27("Enter a key first!", 2, Color3.fromRGB(255, 60, 60));
        return;
    end;
    r27("Verifying key...", 2, Color3.fromRGB(255, 200, 0));
    task.spawn(function(...)
        v3 = {
            pcall(function(...)
                return game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/VRSS/main/Key"); 
            end)
        };
        U = v3[2];
        T = pcall(function(...)
            return game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/VRSS/main/Key"); 
        end);
        if T then
            W = Text:gsub("%s+", "");
            if W == U:gsub("%s+", "") then
                r27("Key verified! Loading...", 3, Color3.fromRGB(0, 255, 0));
                task.wait(1);
                VRSS_KeySystem:Destroy();
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/BB/main/BB.lua"))();
            else
                r27("Invalid key!", 3, Color3.fromRGB(255, 60, 60));
                TextBox.Text = "";
            end;
        else
            r27("Cannot connect. Try again.", 3, Color3.fromRGB(255, 60, 60));
        end;
        return; 
    end); 
end);
local TextLabel3 = Instance.new("TextLabel");
TextLabel3.Size = UDim2.new(1, -30, 0, 20);
TextLabel3.Position = UDim2.new(0, 15, 1, -28);
TextLabel3.BackgroundTransparency = 1;
TextLabel3.Text = "VRSS Key System v1.0";
TextLabel3.TextColor3 = Color3.fromRGB(120, 120, 130);
TextLabel3.TextSize = 10;
TextLabel3.Font = Enum.Font.GothamMedium;
TextLabel3.TextXAlignment = Enum.TextXAlignment.Center;
TextLabel3.ZIndex = 100;
TextLabel3.Parent = Frame;
r27("VRSS Key System loaded!", 3, Color3.fromRGB(100, 150, 255));
print("[VRSS Key System] Ready!");
return;
