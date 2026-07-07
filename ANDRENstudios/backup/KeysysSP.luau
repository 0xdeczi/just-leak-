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
local VRSS_KeySystem = Instance.new("ScreenGui");
VRSS_KeySystem.Name = "VRSS_KeySystem";
VRSS_KeySystem.Parent = v2:WaitForChild("PlayerGui");
local Frame = Instance.new("Frame");
Frame.Size = UDim2.new(0, 380, 0, 230);
Frame.Position = UDim2.new(0.5, -190, 0.5, -115);
Frame.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
Frame.BorderSizePixel = 0;
Frame.Parent = VRSS_KeySystem;
local UICorner = Instance.new("UICorner");
UICorner.CornerRadius = UDim.new(0, 12);
UICorner.Parent = Frame;
local TextLabel = Instance.new("TextLabel");
TextLabel.Size = UDim2.new(1, 0, 0, 40);
TextLabel.Position = UDim2.new(0, 15, 0, 10);
TextLabel.BackgroundTransparency = 1;
TextLabel.Text = "VRSS | Key System";
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255);
TextLabel.TextSize = 18;
TextLabel.Font = Enum.Font.GothamBlack;
TextLabel.TextXAlignment = Enum.TextXAlignment.Left;
TextLabel.Parent = Frame;
local Frame2 = Instance.new("Frame");
Frame2.Size = UDim2.new(1, -20, 0, 1);
Frame2.Position = UDim2.new(0, 10, 0, 50);
Frame2.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
Frame2.BorderSizePixel = 0;
Frame2.Parent = Frame;
local TextBox = Instance.new("TextBox");
TextBox.Size = UDim2.new(1, -30, 0, 40);
TextBox.Position = UDim2.new(0, 15, 0, 60);
TextBox.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
TextBox.PlaceholderText = "Enter key...";
TextBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 110);
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255);
TextBox.TextSize = 14;
TextBox.Font = Enum.Font.GothamMedium;
TextBox.BorderSizePixel = 0;
TextBox.Text = "";
TextBox.Parent = Frame;
local UICorner2 = Instance.new("UICorner");
UICorner2.CornerRadius = UDim.new(0, 8);
UICorner2.Parent = TextBox;
local TextButton = Instance.new("TextButton");
TextButton.Size = UDim2.new(1, -30, 0, 40);
TextButton.Position = UDim2.new(0, 15, 0, 110);
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
TextButton.Text = "GET KEY";
TextButton.TextColor3 = Color3.fromRGB(50, 150, 255);
TextButton.TextSize = 14;
TextButton.Font = Enum.Font.GothamBold;
TextButton.BorderSizePixel = 0;
TextButton.Parent = Frame;
local UICorner3 = Instance.new("UICorner");
UICorner3.CornerRadius = UDim.new(0, 8);
UICorner3.Parent = TextButton;
TextButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://t.me/HiVRSSbot");
    end; 
end);
local TextButton2 = Instance.new("TextButton");
TextButton2.Size = UDim2.new(1, -30, 0, 40);
TextButton2.Position = UDim2.new(0, 15, 0, 160);
TextButton2.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
TextButton2.Text = "CHECK KEY";
TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255);
TextButton2.TextSize = 14;
TextButton2.Font = Enum.Font.GothamBold;
TextButton2.BorderSizePixel = 0;
TextButton2.Parent = Frame;
local UICorner4 = Instance.new("UICorner");
UICorner4.CornerRadius = UDim.new(0, 8);
UICorner4.Parent = TextButton2;
TextButton2.MouseButton1Click:Connect(function(...)
    v = TextBox.Text;
    if v == "" then
        return;
    end;
    d = {
        pcall(function()
            return game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/VRSS/main/Key"); 
        end)
    };
    W = d[2];
    v2 = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/VRSS/main/Key"); 
    end);
    if v2 then
        if v:gsub("%s+", "") == W:gsub("%s+", "") then
            VRSS_KeySystem:Destroy();
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ANDRENstudios/SpiderV1/main/SP.lua"))();
        end;
    end; 
end);
local TextButton3 = Instance.new("TextButton");
TextButton3.Size = UDim2.new(0, 24, 0, 24);
TextButton3.Position = UDim2.new(1, -32, 0, 12);
TextButton3.BackgroundColor3 = Color3.fromRGB(40, 40, 48);
TextButton3.Text = "X";
TextButton3.TextColor3 = Color3.fromRGB(200, 200, 200);
TextButton3.TextSize = 12;
TextButton3.Font = Enum.Font.GothamBold;
TextButton3.BorderSizePixel = 0;
TextButton3.Parent = Frame;
local UICorner5 = Instance.new("UICorner");
UICorner5.CornerRadius = UDim.new(0, 6);
UICorner5.Parent = TextButton3;
TextButton3.MouseButton1Click:Connect(function()
    VRSS_KeySystem:Destroy(); 
end);
print("[VRSS Key System] Loaded!");
return;
