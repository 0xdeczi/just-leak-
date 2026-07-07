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
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;
local Workspace = game:GetService("Workspace");
local TweenService = game:GetService("TweenService");
local UserInputService = game:GetService("UserInputService");
local RunService = game:GetService("RunService");
local Lighting = game:GetService("Lighting");
local TeleportService = game:GetService("TeleportService");
local HttpService = game:GetService("HttpService");
local Character = LocalPlayer.Character;
if Character then
    local humanoid = Character:WaitForChild("Humanoid");
    local r35 = Character:WaitForChild("HumanoidRootPart");
    LocalPlayer.CharacterAdded:Connect(function(Character, ...)
        applySettings();
        if Settings.NoClip then
            enableNoClip();
        end;
        return; 
    end);
    local r36 = {
        ["WalkSpeed"] = 16,
        ["JumpPower"] = 50,
        ["Gravity"] = 196.2,
        ["HipHeight"] = 2,
        ["FOV"] = 70,
        ["NoClip"] = false,
        ["FlySpeed"] = 50,
        ["FlyEnabled"] = false,
        ["GodSpider"] = false,
        ["ESP"] = false,
        ["GESP"] = false,
        ["InfiniteJump"] = false
    };
    local list = {
        "Battery",
        "Blue Key",
        "Bug Spray",
        "C4",
        "Crowbar",
        "Green Key",
        "Orange Key",
        "Purple Key",
        "Red Key",
        "Wrench",
        "Yellow Key"
    };
    applySettings = function()
        if humanoid then
            humanoid.WalkSpeed = r36.WalkSpeed;
            humanoid.JumpPower = r36.JumpPower;
            humanoid.HipHeight = r36.HipHeight;
        end;
        if Workspace.Gravity then
            Workspace.Gravity = r36.Gravity;
        end; 
    end;
    local function r48()
        if r47 then
            r47:Disconnect();
        end; 
    end;
    local function r49()
        if r47 then
            r47:Disconnect();
        end;
        if humanoid then
            humanoid.PlatformStand = false;
        end; 
    end;
    local function r50()
        if r41 then
            r41:Disconnect();
        end; 
    end;
    local function r51()
        if r41 then
            r41:Disconnect();
        end;
        if Character then
            for instance2, b in ipairs(F(b)) do
                if b:IsA("BasePart") then
                    b.CanCollide = true;
                end; 
            end;
        end; 
    end;
    local function r52()
        b = b[1];
        for _, t in ipairs(b:GetDescendants()) do
            table = r15;
            Q = t:IsA("BasePart") or table;
            if Q then
                Q = t.Name:lower();
                table = 11357228045480[3];
                for table, l in 11357228045480[1], ipairs(list) do
                    local Character = not ({})[l];
                    if Character then
                        game = Q:find(l:lower());
                    end;
                    if Character then
                        local Character = t:IsA("Model") and t.PrimaryPart;
                        if Character then
                            if game then
                                table.insert({}, {
                                    ["Item"] = t,
                                    ["Part"] = game,
                                    ["Name"] = l
                                });
                                ({})[l] = true;
                            else
                                
                            end;
                        else
                            game = t;
                        end;
                    end; 
                end;
            end; 
        end;
        return {}; 
    end;
    local function r53()
        q = r52();
        if #q > 0 then
            instance = q[math.random(1, #q)];
            if Character then
                r35.CFrame = instance.Part.CFrame * CFrame.new(0, 5, 0);
                list2("God Spider", "Teleported to " .. instance.Name, 2, Color3.fromRGB(255, 140, 0));
            end;
        else
            list2("Warning", "No items found on map", 2, Color3.fromRGB(255, 0, 0));
        end; 
    end;
    local function r54()
        if r38 then
            r38:Disconnect();
        end;
        if humanoid then
            
        end; 
    end;
    RunService.RenderStepped:Connect(function(...)
        if not r36.ESP then
            return;
        end;
        if not Character or not r35 then
            return;
        end;
        instance2 = r16[1];
        for instance, b in instance2, pairs(instance2) do
            if b.RootPart and b.RootPart.Parent then
                if b.DistLabel then
                    b.DistLabel.Text = math.floor((b.RootPart.Position - r35.Position).Magnitude) .. " studs";
                end;
                if b.Attach1 and r35 then
                    b.Attach1.WorldPosition = r35.Position;
                end;
            end; 
        end;
        return; 
    end);
    local function r60(...)
        for instance, b in pairs(tween) do
            r59(instance); 
        end;
        for instance2, b in ipairs(F(b)) do
            Players = instance2;
            if b ~= LocalPlayer then
                r56(b);
            end; 
        end;
        Players.PlayerAdded:Connect(function(arg1_9, ...)
            if r36.ESP then
                r56(arg1_9);
            end;
            return; 
        end); 
    end;
    local function r61()
        for instance, b in pairs("pairs") do
            r59(instance); 
        end; 
    end;
    local function r64()
        instance2 = 15[1];
        for instance, b in pairs(instance2) do
            r63(instance); 
        end;
        for v, instance3 in Workspace[1], ipairs(F(instance3)) do
            Workspace = v;
            if (instance3:IsA("BasePart") or r15) and instance3.Parent ~= Character then
                ipairs = instance3.Name;
                ipairs:lower();
                for y, r15 in ipairs(list) do
                    table = y;
                    game = not ({})[r15];
                    if game then
                        r62(instance3, r15);
                        ({})[r15] = true;
                    else
                        
                    end; 
                end;
            end; 
        end; 
    end;
    local function r65()
        instance2 = 15[1];
        for instance, b in instance2, pairs(instance2) do
            r63(instance); 
        end; 
    end;
    local instance4 = Instance.new("ScreenGui");
    instance4.Name = "VRSS_Spider_Menu";
    instance4.Parent = LocalPlayer:WaitForChild("PlayerGui");
    instance4.ResetOnSpawn = false;
    instance4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    local instance5 = Instance.new("TextButton");
    instance5.Size = UDim2.new(0, 45, 0, 45);
    instance5.Position = UDim2.new(.9, 0, .1, 0);
    instance5.BackgroundColor3 = Color3.fromRGB(15, 15, 20);
    instance5.BackgroundTransparency = .1;
    instance5.Text = "";
    instance5.BorderSizePixel = 0;
    instance5.Active = true;
    instance5.Draggable = true;
    instance5.ZIndex = 200;
    instance5.Parent = instance4;
    local instance6 = Instance.new("UICorner");
    instance6.CornerRadius = UDim.new(1, 0);
    instance6.Parent = instance5;
    local instance7 = Instance.new("UIStroke");
    instance7.Color = Color3.fromRGB(180, 0, 0);
    instance7.Thickness = 2;
    instance7.Transparency = .3;
    instance7.Parent = instance5;
    local instance8 = Instance.new("TextLabel");
    instance8.Size = UDim2.new(1, 0, 1, 0);
    instance8.BackgroundTransparency = 1;
    instance8.Text = "V";
    instance8.TextColor3 = Color3.fromRGB(200, 30, 30);
    instance8.TextSize = 26;
    instance8.Font = Enum.Font.GothamBlack;
    instance8.ZIndex = 201;
    instance8.Parent = instance5;
    local instance9 = Instance.new("Frame");
    instance9.Name = "MainFrame";
    instance9.Size = UDim2.new(0, 720, 0, 500);
    instance9.Position = UDim2.new(0.5, -360, 0.5, -250);
    instance9.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
    instance9.BorderSizePixel = 0;
    instance9.Active = true;
    instance9.Draggable = true;
    instance9.Visible = false;
    instance9.ZIndex = 100;
    instance9.Parent = instance4;
    local instance10 = Instance.new("UICorner");
    instance10.CornerRadius = UDim.new(0, 12);
    instance10.Parent = instance9;
    local instance11 = Instance.new("UIStroke");
    instance11.Color = Color3.fromRGB(60, 0, 0);
    instance11.Thickness = 1;
    instance11.Transparency = 0.5;
    instance11.Parent = instance9;
    local instance12 = Instance.new("Frame");
    instance12.Size = UDim2.new(1, 0, 0, 50);
    instance12.BackgroundTransparency = 1;
    instance12.ZIndex = 100;
    instance12.Parent = instance9;
    local instance13 = Instance.new("Frame");
    instance13.Size = UDim2.new(1, -20, 0, 1);
    instance13.Position = UDim2.new(0, 10, 0, 49);
    instance13.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    instance13.BorderSizePixel = 0;
    instance13.ZIndex = 100;
    instance13.Parent = instance12;
    local instance14 = Instance.new("Frame");
    instance14.Size = UDim2.new(0, 30, 0, 30);
    instance14.Position = UDim2.new(0, 12, 0.5, -15);
    instance14.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    instance14.BorderSizePixel = 0;
    instance14.ZIndex = 100;
    instance14.Parent = instance12;
    local instance15 = Instance.new("UICorner");
    instance15.CornerRadius = UDim.new(0, 6);
    instance15.Parent = instance14;
    local instance16 = Instance.new("TextLabel");
    instance16.Size = UDim2.new(1, 0, 1, 0);
    instance16.BackgroundTransparency = 1;
    instance16.Text = "V";
    instance16.TextColor3 = Color3.fromRGB(255, 255, 255);
    instance16.TextSize = 18;
    instance16.Font = Enum.Font.GothamBlack;
    instance16.ZIndex = 100;
    instance16.Parent = instance14;
    local instance17 = Instance.new("TextLabel");
    instance17.Size = UDim2.new(0, 200, 1, 0);
    instance17.Position = UDim2.new(0, 50, 0, 0);
    instance17.BackgroundTransparency = 1;
    instance17.Text = "VRSS | Spider";
    instance17.TextColor3 = Color3.fromRGB(255, 255, 255);
    instance17.TextSize = 18;
    instance17.Font = Enum.Font.GothamBlack;
    instance17.TextXAlignment = Enum.TextXAlignment.Left;
    instance17.ZIndex = 100;
    instance17.Parent = instance12;
    local instance18 = Instance.new("TextLabel");
    instance18.Size = UDim2.new(0, 60, 0, 18);
    instance18.Position = UDim2.new(0, 157, 1, -22);
    instance18.BackgroundTransparency = 1;
    instance18.Text = "v1.0.1 | Mobile";
    instance18.TextColor3 = Color3.fromRGB(140, 140, 155);
    instance18.TextSize = 10;
    instance18.Font = Enum.Font.GothamMedium;
    instance18.TextXAlignment = Enum.TextXAlignment.Left;
    instance18.ZIndex = 100;
    instance18.Parent = instance12;
    local instance19 = Instance.new("Frame");
    instance19.Size = UDim2.new(0, 75, 0, 22);
    instance19.Position = UDim2.new(1, -110, 0.5, -11);
    instance19.BackgroundColor3 = Color3.fromRGB(20, 20, 28);
    instance19.BorderSizePixel = 0;
    instance19.ZIndex = 100;
    instance19.Parent = instance12;
    local instance20 = Instance.new("UICorner");
    instance20.CornerRadius = UDim.new(0, 6);
    instance20.Parent = instance19;
    local instance21 = Instance.new("UIStroke");
    instance21.Color = Color3.fromRGB(0, 200, 0);
    instance21.Thickness = 1;
    instance21.Parent = instance19;
    local instance22 = Instance.new("Frame");
    instance22.Size = UDim2.new(0, 6, 0, 6);
    instance22.Position = UDim2.new(0, 8, 0.5, -3);
    instance22.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
    instance22.BorderSizePixel = 0;
    instance22.ZIndex = 100;
    instance22.Parent = instance19;
    local instance23 = Instance.new("UICorner");
    instance23.CornerRadius = UDim.new(1, 0);
    instance23.Parent = instance22;
    local instance24 = Instance.new("TextLabel");
    instance24.Size = UDim2.new(0, 50, 1, 0);
    instance24.Position = UDim2.new(0, 18, 0, 0);
    instance24.BackgroundTransparency = 1;
    instance24.Text = "ACT / MB";
    instance24.TextColor3 = Color3.fromRGB(200, 200, 200);
    instance24.TextSize = 10;
    instance24.Font = Enum.Font.GothamBold;
    instance24.ZIndex = 100;
    instance24.Parent = instance19;
    local instance25 = Instance.new("TextButton");
    instance25.Size = UDim2.new(0, 24, 0, 24);
    instance25.Position = UDim2.new(1, -34, 0, 13);
    instance25.BackgroundColor3 = Color3.fromRGB(40, 40, 48);
    instance25.Text = "X";
    instance25.TextColor3 = Color3.fromRGB(200, 200, 200);
    instance25.TextSize = 12;
    instance25.Font = Enum.Font.GothamBold;
    instance25.BorderSizePixel = 0;
    instance25.ZIndex = 100;
    instance25.Parent = instance12;
    local instance26 = Instance.new("UICorner");
    instance26.CornerRadius = UDim.new(0, 6);
    instance26.Parent = instance25;
    instance25.MouseEnter:Connect(function(...)
        tween = TweenService:Create(instance25, TweenInfo.new(.2), {
            ["BackgroundColor3"] = Color3.fromRGB(200, 40, 40)
        });
        tween:Play();
        return; 
    end);
    instance25.MouseLeave:Connect(function(...)
        tween = TweenService:Create(instance25, TweenInfo.new(.2), {
            ["BackgroundColor3"] = Color3.fromRGB(40, 40, 48)
        });
        tween:Play();
        return; 
    end);
    instance25.MouseButton1Click:Connect(function(...)
        instance9.Visible = false;
        instance5.Visible = true;
        return; 
    end);
    local instance27 = Instance.new("Frame");
    instance27.Size = UDim2.new(1, -20, 0, 38);
    instance27.Position = UDim2.new(0, 10, 0, 58);
    instance27.BackgroundColor3 = Color3.fromRGB(20, 20, 28);
    instance27.BorderSizePixel = 0;
    instance27.ZIndex = 100;
    instance27.Parent = instance9;
    local instance28 = Instance.new("UICorner");
    instance28.CornerRadius = UDim.new(0, 8);
    instance28.Parent = instance27;
    local instance29 = Instance.new("UIStroke");
    instance29.Color = Color3.fromRGB(40, 0, 0);
    instance29.Thickness = 1;
    instance29.Transparency = 0.5;
    instance29.Parent = instance27;
    local instance30 = Instance.new("Frame");
    instance30.Size = UDim2.new(1, -20, 1, -105);
    instance30.Position = UDim2.new(0, 10, 0, 102);
    instance30.BackgroundColor3 = Color3.fromRGB(20, 20, 28);
    instance30.BorderSizePixel = 0;
    instance30.ZIndex = 100;
    instance30.Parent = instance9;
    local instance31 = Instance.new("UICorner");
    instance31.CornerRadius = UDim.new(0, 8);
    instance31.Parent = instance30;
    local instance32 = Instance.new("UIStroke");
    instance32.Color = Color3.fromRGB(40, 0, 0);
    instance32.Thickness = 1;
    instance32.Transparency = 0.5;
    instance32.Parent = instance30;
    local items = {};
    local function v37()
        q = Instance.new("Frame");
        q.Size = UDim2.new(1, 0, 1, 0);
        q.BackgroundTransparency = 1;
        q.Visible = false;
        q.ZIndex = 100;
        q.Parent = instance30;
        instance = Instance.new("Frame");
        instance.Size = UDim2.new(0, 310, 1, -10);
        instance.Position = UDim2.new(0, 5, 0, 5);
        instance.BackgroundTransparency = 1;
        instance.ZIndex = 100;
        instance.Parent = q;
        instance2 = Instance.new("Frame");
        instance2.Size = UDim2.new(1, -325, 1, -10);
        instance2.Position = UDim2.new(0, 320, 0, 5);
        instance2.BackgroundTransparency = 1;
        instance2.ZIndex = 100;
        instance2.Parent = q;
        v = Instance.new("ScrollingFrame");
        v.Size = UDim2.new(1, 0, 1, 0);
        v.BackgroundTransparency = 1;
        v.ScrollBarThickness = 2;
        v.ScrollBarImageColor3 = Color3.fromRGB(180, 0, 0);
        v.CanvasSize = UDim2.new(0, 0, 0, 0);
        v.ZIndex = 100;
        v.Parent = instance;
        b = Instance.new("UIListLayout");
        b.Padding = UDim.new(0, 6);
        b.HorizontalAlignment = Enum.HorizontalAlignment.Center;
        b.SortOrder = Enum.SortOrder.LayoutOrder;
        b.Parent = v;
        instance3 = Instance.new("ScrollingFrame");
        instance3.Size = UDim2.new(1, 0, 1, 0);
        instance3.BackgroundTransparency = 1;
        instance3.ScrollBarThickness = 2;
        instance3.ScrollBarImageColor3 = Color3.fromRGB(180, 0, 0);
        instance3.CanvasSize = UDim2.new(0, 0, 0, 0);
        instance3.ZIndex = 100;
        instance3.Parent = instance2;
        t = Instance.new("UIListLayout");
        t.Padding = UDim.new(0, 6);
        t.HorizontalAlignment = Enum.HorizontalAlignment.Center;
        t.SortOrder = Enum.SortOrder.LayoutOrder;
        t.Parent = instance3;
        table.insert(items, {
            ["Frame"] = q,
            ["LeftScroll"] = v,
            ["RightScroll"] = instance3,
            ["LeftList"] = b,
            ["RightList"] = t
        });
        return v, instance3; 
    end;
    local v38 = {
        v37()
    };
    local v41 = v38[2];
    local v42 = {
        v37()
    };
    local v43 = v42[2];
    local v44 = v37();
    local v45 = v37();
    local v46 = {
        v37()
    };
    local v47 = v46[2];
    local v48 = v37();
    local v49 = v37();
    local v50 = {
        v37()
    };
    local v52 = v37();
    local v53 = v50[2];
    local v55 = v37();
    local instance33 = Instance.new("UIListLayout");
    instance33.FillDirection = Enum.FillDirection.Horizontal;
    instance33.Padding = UDim.new(0, 4);
    instance33.HorizontalAlignment = Enum.HorizontalAlignment.Left;
    instance33.VerticalAlignment = Enum.VerticalAlignment.Center;
    instance33.SortOrder = Enum.SortOrder.LayoutOrder;
    instance33.Parent = instance27;
    local instance34 = Instance.new("UIPadding");
    instance34.PaddingLeft = UDim.new(0, 6);
    instance34.Parent = instance27;
    local v58 = mv("Player", items[1]);
    mv("Teleport", items[2]);
    mv("AVI", items[3]);
    mv("World", items[4]);
    mv("Misc", items[5]);
    mv("CR", items[6]);
    v58.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    v58.TextColor3 = Color3.fromRGB(255, 255, 255);
    items[1].Frame.Visible = true;
    LV(v44, "Walk Speed", 0, 200, 16, "studs/s", function(arg1_20, ...)
        r36.WalkSpeed = arg1_20;
        if humanoid then
            arg1_20 = arg1_20;
            humanoid.WalkSpeed = arg1_20;
        end;
        return; 
    end);
    LV(v44, "Jump Power", 0, 300, 50, "power", function(arg1_21, ...)
        r36.JumpPower = arg1_21;
        if humanoid then
            arg1_21 = arg1_21;
            humanoid.JumpPower = arg1_21;
        end;
        return; 
    end);
    LV(v44, "Gravity", 0, 500, 196.2, "studs/s2", function(arg1_22, ...)
        r36.Gravity = arg1_22;
        Workspace.Gravity = arg1_22;
        return; 
    end);
    LV(v44, "Hip Height", 0, 10, 2, "studs", function(arg1_23, ...)
        r36.HipHeight = arg1_23;
        if humanoid then
            arg1_23 = arg1_23;
            humanoid.HipHeight = arg1_23;
        end;
        return; 
    end);
    LV(v41, "Field of View", 30, 120, 70, "deg", function(arg1_24, ...)
        r36.FOV = arg1_24;
        Workspace.CurrentCamera.FieldOfView = arg1_24;
        return; 
    end);
    LV(v41, "Fly Speed", 10, 200, 50, "studs/s", function(arg1_25, ...)
        r36.FlySpeed = arg1_25;
        return; 
    end);
    EV(v41, "Fly Mode (WASD/Space/Ctrl)", false, function(...)
        instance, b = instance2(q, instance);
        while instance do
            b.Frame.Visible = false; 
        end;
        instance3 = 33071641689128;
        r48.Frame[r15[r16("\xbd\xaa?co\xb6", instance3)]] = true;
        for instance2, b in ipairs(list2) do
            instance3 = r49:Create(b, TweenInfo.new(.2), {
                ["BackgroundColor3"] = Color3.fromRGB(30, 30, 38),
                ["TextColor3"] = Color3.fromRGB(170, 170, 185)
            });
            instance3:Play(); 
        end;
        q = r49:Create(Z[T[7]], TweenInfo.new(.2), {
            ["BackgroundColor3"] = Color3.fromRGB(180, 0, 0),
            ["TextColor3"] = Color3.fromRGB(255, 255, 255)
        });
        q:Play();
        return; 
    end);
    EV(v41, "NoClip", false, function(arg1_26, ...)
        r36.NoClip = arg1_26;
        if arg1_26 then
            r50();
            list2("NoClip", "Activated - safe mode", 2, Color3.fromRGB(0, 200, 0));
        else
            r51();
            list2("NoClip", "Deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    EV(v41, "Infinite Jump", false, function(arg1_27, ...)
        r36.InfiniteJump = arg1_27;
        if arg1_27 then
            list2("Infinite Jump", "Activated", 2, Color3.fromRGB(0, 200, 0));
        else
            list2("Infinite Jump", "Deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    UserInputService.JumpRequest:Connect(function(...)
        if r36.InfiniteJump and humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping);
        end;
        return; 
    end);
    local v60 = {
        ["Name"] = "Wrench",
        ["Paths"] = {
            "Wrench",
            "wrench",
            "Wren"
        }
    };
    local v61 = {
        ipairs({
            {
                ["Name"] = "Battery",
                ["Paths"] = {
                    "Battery",
                    "battery",
                    "Bat"
                }
            },
            {
                ["Name"] = "Blue Key",
                ["Paths"] = {
                    "BlueKey",
                    "Blue Key",
                    "bluekey",
                    "Key_Blue"
                }
            },
            {
                ["Name"] = "Bug Spray",
                ["Paths"] = {
                    "BugSpray",
                    "Bug Spray",
                    "bugspray",
                    "Spray"
                }
            },
            {
                ["Name"] = "C4",
                ["Paths"] = {
                    "C4",
                    "c4",
                    "ExplosiveC4"
                }
            },
            {
                ["Name"] = "Crowbar",
                ["Paths"] = {
                    "Crowbar",
                    "crowbar",
                    "Crow"
                }
            },
            {
                ["Name"] = "Green Key",
                ["Paths"] = {
                    "GreenKey",
                    "Green Key",
                    "greenkey",
                    "Key_Green"
                }
            },
            {
                ["Name"] = "Orange Key",
                ["Paths"] = {
                    "OrangeKey",
                    "Orange Key",
                    "orangekey",
                    "Key_Orange"
                }
            },
            {
                ["Name"] = "Purple Key",
                ["Paths"] = {
                    "PurpleKey",
                    "Purple Key",
                    "purplekey",
                    "Key_Purple"
                }
            },
            {
                ["Name"] = "Red Key",
                ["Paths"] = {
                    "RedKey",
                    "Red Key",
                    "redkey",
                    "Key_Red"
                }
            },
            v60,
            {
                ["Name"] = "Yellow Key",
                ["Paths"] = {
                    "YellowKey",
                    "Yellow Key",
                    "yellowkey",
                    "Key_Yellow"
                }
            }
        })
    };
    local v62 = ipairs({
        {
            ["Name"] = "Battery",
            ["Paths"] = {
                "Battery",
                "battery",
                "Bat"
            }
        },
        {
            ["Name"] = "Blue Key",
            ["Paths"] = {
                "BlueKey",
                "Blue Key",
                "bluekey",
                "Key_Blue"
            }
        },
        {
            ["Name"] = "Bug Spray",
            ["Paths"] = {
                "BugSpray",
                "Bug Spray",
                "bugspray",
                "Spray"
            }
        },
        {
            ["Name"] = "C4",
            ["Paths"] = {
                "C4",
                "c4",
                "ExplosiveC4"
            }
        },
        {
            ["Name"] = "Crowbar",
            ["Paths"] = {
                "Crowbar",
                "crowbar",
                "Crow"
            }
        },
        {
            ["Name"] = "Green Key",
            ["Paths"] = {
                "GreenKey",
                "Green Key",
                "greenkey",
                "Key_Green"
            }
        },
        {
            ["Name"] = "Orange Key",
            ["Paths"] = {
                "OrangeKey",
                "Orange Key",
                "orangekey",
                "Key_Orange"
            }
        },
        {
            ["Name"] = "Purple Key",
            ["Paths"] = {
                "PurpleKey",
                "Purple Key",
                "purplekey",
                "Key_Purple"
            }
        },
        {
            ["Name"] = "Red Key",
            ["Paths"] = {
                "RedKey",
                "Red Key",
                "redkey",
                "Key_Red"
            }
        },
        v60,
        {
            ["Name"] = "Yellow Key",
            ["Paths"] = {
                "YellowKey",
                "Yellow Key",
                "yellowkey",
                "Key_Yellow"
            }
        }
    });
    local v63 = v61[2];
    local v64, v65 = v62(v63, vm31);
    while v65[3] do
        local v68 = v64 <= 6;
        if v68 then
            (function(arg1_30, tween2, arg3_30, arg4_30, ...)
                instance35 = Instance.new("TextButton");
                instance35.Size = UDim2.new(1, -10, 0, 38);
                if arg4_30 then
                    MouseLeave[r15[r16(v3, y)]] = arg4_30;
                    instance35.Text = "";
                    instance35.BorderSizePixel = 0;
                    instance35.ZIndex = 100;
                    arg4_30 = arg1_30;
                    instance35.Parent = arg4_30;
                    arg4_30 = Instance.new("UICorner");
                    instance3.CornerRadius = UDim.new(0, 8);
                    instance3.Parent = instance35;
                    instance36 = Instance.new("UIStroke");
                    instance36.Color = Color3.fromRGB(45, 45, 55);
                    instance36.Thickness = 1;
                    instance36.Parent = instance35;
                    arg4_30 = Instance.new("TextLabel");
                    Q.Size = UDim2.new(1, -16, 1, 0);
                    Q.Position = UDim2.new(0, 8, 0, 0);
                    Q.BackgroundTransparency = 1;
                    Q.Text = tween2;
                    Q.TextColor3 = Color3.fromRGB(210, 210, 220);
                    Q.TextSize = 12;
                    Q.Font = Enum.Font.GothamMedium;
                    Q.TextXAlignment = Enum.TextXAlignment.Left;
                    Q.ZIndex = 100;
                    Q.Parent = instance35;
                    instance35.MouseEnter:Connect(function(...)
                        tween2 = TweenService:Create(instance35, TweenInfo.new(.2), {
                            ["BackgroundColor3"] = Color3.fromRGB(45, 45, 55)
                        });
                        tween2:Play();
                        instance36.Color = Color3.fromRGB(180, 0, 0);
                        return; 
                    end);
                    MouseLeave = instance35.MouseLeave;
                    MouseLeave:Connect(function(...)
                        TweenInfo.new(.2);
                        arg4_30 = TweenService;
                        if arg4_30 then
                            tween2 = MouseLeave:Create(arg4_30, instance(.2), {
                                [r15[r16(arg4_30, v3)]] = arg4_30
                            });
                            tween2:Play();
                            instance36.Color = Color3.fromRGB(45, 45, 55);
                            return;
                        else
                            arg4_30 = Color3.fromRGB(30, 30, 38);
                        end; 
                    end);
                    instance35.MouseButton1Click:Connect(function(...)
                        arg3_30();
                        spawn(function(...)
                            tween2 = r16:Create(TweenService, TweenInfo.new(.1), {
                                ["BackgroundColor3"] = Color3.fromRGB(180, 0, 0)
                            });
                            tween2:Play();
                            tween2 = wait(.15);
                            instance35 = Z[T[6]];
                            if instance35 then
                                tween2 = r16:Create(TweenService, TweenInfo.new(.1), {
                                    ["BackgroundColor3"] = instance35
                                });
                                tween2:Play();
                                return;
                            else
                                
                            end; 
                        end);
                        return; 
                    end);
                    return instance35;
                else
                    Color3.fromRGB(30, 30, 38);
                end; 
            end)(v68 and v45, r98.Name, function(...)
                q = r96(r98.Paths);
                if q then
                    r97(q);
                    list2("Teleport", "Teleported to " .. r98.Name, 2, Color3.fromRGB(0, 200, 0));
                else
                    list2("Error", r98.Name .. " not found", 2, Color3.fromRGB(255, 0, 0));
                end;
                return; 
            end);
        else
            
        end; 
    end;
    rV(v45, "Teleport to Spawn", function(...)
        if Character and r35 then
            Workspace:FindFirstChild("Spawn");
            q = q:FindFirstChild("SpawnLocation") or ;
            if q then
                r35.CFrame = q.CFrame * CFrame.new(0, 3, 0);
                list2("Teleport", "Teleported to spawn", 2, Color3.fromRGB(0, 200, 0));
            end;
        end;
        return; 
    end);
    rV(v45, "Teleport to Mouse", function(...)
        if Character and r35 then
            r35.CFrame = CFrame.new(LocalPlayer:GetMouse().Hit.Position + Vector3.new(0, 3, 0));
            list2("Teleport", "Teleported to cursor", 2, Color3.fromRGB(0, 200, 0));
        end;
        return; 
    end);
    EV(v48, "God Spider", false, function(arg1_31, ...)
        r36.GodSpider = arg1_31;
        if arg1_31 then
            r54();
            list2("God Spider", "Activated - TP to random item on damage", 3, Color3.fromRGB(0, 200, 0));
        else
            if r38 then
                r38:Disconnect();
            end;
            list2("God Spider", "Deactivated", 2, Color3.fromRGB(200, 0, 0));
            return;
        end; 
    end);
    EV(v48, "Player ESP", false, function(arg1_32, ...)
        r36.ESP = arg1_32;
        if arg1_32 then
            r60();
            list2("ESP", "Player ESP activated", 2, Color3.fromRGB(0, 200, 0));
        else
            r61();
            list2("ESP", "Player ESP deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    EV(v48, "Item ESP", false, function(arg1_33, ...)
        r36.GESP = arg1_33;
        if arg1_33 then
            r64();
            list2("GESP", "Item ESP activated - one per type", 2, Color3.fromRGB(0, 200, 0));
        else
            r65();
            list2("GESP", "Item ESP deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    rV(v43, "Find Items Count", function(...)
        q = r52();
        list2("Items Found", "Found " .. #q .. " unique items on map", 2, Color3.fromRGB(255, 200, 0));
        return; 
    end);
    rV(v43, "Random Item Teleport", function(...)
        r53();
        return; 
    end);
    LV(v49, "Server Gravity", 0, 500, 196.2, "studs/s2", function(arg1_34, ...)
        Workspace.Gravity = arg1_34;
        return; 
    end);
    LV(v49, "Time of Day", 0, 24, 12, "h", function(arg1_35, ...)
        Lighting.ClockTime = arg1_35;
        return; 
    end);
    LV(v47, "Brightness", 0, 5, 1, "x", function(arg1_36, ...)
        Lighting.Brightness = arg1_36;
        return; 
    end);
    EV(v49, "Full Bright", false, function(arg1_37, ...)
        if arg1_37 then
            Lighting.Brightness = 2;
            Lighting.ClockTime = 14;
            Lighting.FogEnd = 99999;
            list2("Full Bright", "Activated", 2, Color3.fromRGB(0, 200, 0));
        else
            Lighting.Brightness = 1;
            Lighting.FogEnd = 1000;
            list2("Full Bright", "Deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    EV(v49, "Anti-Fog", false, function(arg1_38, ...)
        v71.FogEnd = arg1_38 and 99999 or 1000;
        Lighting.FogStart = 0;
        if arg1_38 then
            list2("Anti-Fog", "Activated", 2, Color3.fromRGB(0, 200, 0));
        else
            list2("Anti-Fog", "Deactivated", 2, Color3.fromRGB(200, 0, 0));
        end;
        return; 
    end);
    EV(v47, "No Depth of Field", false, function(arg1_39, ...)
        if Lighting:FindFirstChild("DepthOfField") then
            Lighting.DepthOfField.Enabled = not arg1_39;
        end;
        return; 
    end);
    EV(v47, "No Bloom", false, function(arg1_40, ...)
        if Lighting:FindFirstChild("Bloom") then
            Lighting.Bloom.Enabled = not arg1_40;
        end;
        return; 
    end);
    rV(v52, "Rejoin Server", function(...)
        list2("Rejoin", "Rejoining server...", 2, Color3.fromRGB(255, 140, 0));
        wait(0.5);
        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer);
        return; 
    end, Color3.fromRGB(35, 35, 45));
    rV(v52, "Server Hop", function(...)
        list2("Server Hop", "Searching for server...", 2, Color3.fromRGB(255, 140, 0));
        t = "\x89A\xea \x8c\xe1\xe7B\x16\x81\xf8\xa6\x11\x07\xa7\xd4\xac\xe4\xe2\xb0\x83\x7f@6fik\xa5\n\x95\xda\x96\x82\xa3\xad\xd3\xc7\x9a\x95";
        instance3 = r16(t, 21104671172195);
        r99 = "https://games.roblox.com/v1/games/" .. game.PlaceId .. r15[instance3];
        v = {
            pcall(function(...)
                return HttpService:JSONDecode(game:HttpGet(r99)); 
            end)
        };
        instance2 = pcall(function(...)
            return HttpService:JSONDecode(game:HttpGet(r99)); 
        end);
        if instance2 then
            for b, Q in instance3, ipairs(instance3) do
                if Q.id ~= game.JobId and Q.playing < Q.maxPlayers then
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, Q.id, LocalPlayer);
                else
                    
                end;
                break; 
            end;
        end;
        return; 
    end, Color3.fromRGB(35, 35, 45));
    rV(v52, "Reset Character", function(...)
        if Character then
            Character:BreakJoints();
            list2("Reset", "Character reset", 2, Color3.fromRGB(255, 140, 0));
        end;
        return; 
    end, Color3.fromRGB(160, 35, 35));
    rV(v52, "Infinite Yield", function(...)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))();
        list2("Loaded", "Infinite Yield loaded", 2, Color3.fromRGB(0, 200, 0));
        return; 
    end, Color3.fromRGB(30, 30, 45));
    rV(v53, "Dex Explorer", function(...)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))();
        list2("Loaded", "Dex Explorer loaded", 2, Color3.fromRGB(0, 200, 0));
        return; 
    end, Color3.fromRGB(30, 30, 45));
    rV(v53, "FPS Booster", function(...)
        v = v[1];
        for instance2, instance3 in pairs({
            ["Lighting"] = {
                ["GlobalShadows"] = false,
                ["ShadowMap"] = false,
                ["Technology"] = Enum.Technology.Compatibility
            },
            ["Rendering"] = {
                [v] = Enum.QualityLevel.Level01
            }
        }) do
            for y, w in pairs(instance3) do
                game:GetService(instance2)[y] = w; 
            end; 
        end;
        list2("FPS", "FPS Booster activated", 2, Color3.fromRGB(0, 200, 0));
        return; 
    end, Color3.fromRGB(30, 30, 45));
    local instance37 = Instance.new("TextLabel");
    instance37.Size = UDim2.new(1, -10, 0, 35);
    instance37.Position = UDim2.new(0, 5, 0, 5);
    instance37.BackgroundColor3 = Color3.fromRGB(28, 28, 36);
    instance37.Text = "Script by VRSS";
    instance37.TextColor3 = Color3.fromRGB(255, 255, 255);
    instance37.TextSize = 16;
    instance37.Font = Enum.Font.GothamBlack;
    instance37.BorderSizePixel = 0;
    instance37.ZIndex = 100;
    instance37.Parent = v55;
    local instance38 = Instance.new("UICorner");
    instance38.CornerRadius = UDim.new(0, 8);
    instance38.Parent = instance37;
    local instance39 = Instance.new("Frame");
    instance39.Size = UDim2.new(1, -10, 0, 200);
    instance39.Position = UDim2.new(0, 5, 0, 46);
    instance39.BackgroundColor3 = Color3.fromRGB(28, 28, 36);
    instance39.BorderSizePixel = 0;
    instance39.ZIndex = 100;
    instance39.Parent = v55;
    local instance40 = Instance.new("UICorner");
    instance40.CornerRadius = UDim.new(0, 8);
    instance40.Parent = instance39;
    local instance41 = Instance.new("TextButton");
    instance41.Size = UDim2.new(1, -20, 0, 100);
    instance41.Position = UDim2.new(0, 10, 0, 10);
    instance41.BackgroundTransparency = 2;
    instance41.Text = "Telegram Channel:\n@HiVRSS (Click)";
    instance41.TextColor3 = Color3.fromRGB(50, 150, 255);
    instance41.TextSize = 22;
    instance41.Font = Enum.Font.GothamBlack;
    instance41.TextXAlignment = Enum.TextXAlignment.Left;
    instance41.ZIndex = 150;
    instance41.Parent = instance39;
    instance41.MouseButton1Click:Connect(function(...)
        if setclipboard then
            setclipboard("https://t.me/HiVRSS");
        end;
        list2("Link Copied", "t.me/HiVRSS", 2, Color3.fromRGB(0, 200, 255));
        return; 
    end);
    instance41.MouseEnter:Connect(function(...)
        instance41.TextColor3 = Color3.fromRGB(100, 180, 255);
        return; 
    end);
    instance41.MouseLeave:Connect(function(...)
        instance41.TextColor3 = Color3.fromRGB(50, 150, 255);
        return; 
    end);
    instance5.MouseButton1Click:Connect(function(...)
        instance9.Visible = not instance9.Visible;
        if instance9.Visible then
            list2("Menu", "Opened", 1.5, Color3.fromRGB(180, 0, 0));
        end;
        return; 
    end);
    spawn(function(...)
        while not instance4 do
            if instance4 then
                for q = 0, 1, .03 do
                    instance3 = not instance8;
                    if instance3 then
                        if not instance3 then
                            instance3 = .4 + math.sin(instance4 * math.pi * 2) * .8;
                            instance8.TextColor3 = Color3.fromRGB(200 + 75 * instance3, 0, 0);
                            instance7.Transparency = .7 - instance3 * 0.5;
                            wait(.03);
                        end;
                    else
                        
                    end; 
                end;
            end;
            return; 
        end; 
    end);
    local function v82()
        for instance, b in ipairs("ipairs") do
            for _, y in y[1], ipairs({
                y,
                b.RightScroll
            }) do
                game = y.GetChildren[3];
                for game, e in e[1], ipairs(e(y)) do
                    e:IsA("TextButton");
                    if e:IsA("Frame") or  then
                        table = 0 + e.AbsoluteSize.Y + 6;
                    end; 
                end;
                y.CanvasSize = UDim2.new(0, 0, 0, 0 + 10); 
            end; 
        end; 
    end;
    instance9.ChildAdded:Connect(v82);
    wait(0.5);
    v82();
    UserInputService.InputBegan:Connect(function(arg1_41, arg2_41, ...)
        if arg2_41 then
            return;
        end;
        if arg1_41.KeyCode == Enum.KeyCode.RightControl then
            instance9.Visible = not instance9.Visible;
            if not instance9.Visible then
                instance5.Visible = true;
            end;
        end;
        return; 
    end);
    list2("VRSS Spider v1.0.1 MB", "Loaded!", 2, Color3.fromRGB(0, 200, 0));
    print("[VRSS | Spider | v1.0.1 MB] Loaded! \\ t.me/HiVRSS");
    return;
else
    --fail
end;
