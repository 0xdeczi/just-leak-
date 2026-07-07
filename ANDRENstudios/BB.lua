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
local UserInputService = game:GetService("UserInputService");
local Character = v3.Character;
if Character then
    local r30 = Character:WaitForChild("HumanoidRootPart");
    v3.CharacterAdded:Connect(function(Character, ...)
        return; 
    end);
    local r31 = {
        ["AutoFarm"] = false
    };
    local r32 = 2200;
    local r34 = true;
    local function r36()
        if r33 then
            r33:Disconnect();
        end; 
    end;
    local function r37()
        if r33 then
            r33:Disconnect();
        end;
        if Character then
            r30.Velocity = Vector3.new(0, 0, 0);
        end; 
    end;
    local instance = Instance.new("ScreenGui");
    instance.Name = "VRSS_BrokenBones";
    instance.Parent = v3:WaitForChild("PlayerGui");
    instance.ResetOnSpawn = false;
    instance.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
    local instance2 = Instance.new("TextButton");
    instance2.Size = UDim2.new(0, 38, 0, 38);
    instance2.Position = UDim2.new(.9, 0, .15, 0);
    instance2.BackgroundColor3 = Color3.fromRGB(15, 15, 20);
    instance2.BackgroundTransparency = .1;
    instance2.Text = "";
    instance2.BorderSizePixel = 0;
    instance2.Active = true;
    instance2.Draggable = true;
    instance2.ZIndex = 200;
    instance2.Parent = instance;
    local instance3 = Instance.new("UICorner");
    instance3.CornerRadius = UDim.new(1, 0);
    instance3.Parent = instance2;
    local instance4 = Instance.new("UIStroke");
    instance4.Color = Color3.fromRGB(180, 0, 0);
    instance4.Thickness = 2;
    instance4.Transparency = .3;
    instance4.Parent = instance2;
    local instance5 = Instance.new("TextLabel");
    instance5.Size = UDim2.new(1, 0, 1, 0);
    instance5.BackgroundTransparency = 1;
    instance5.Text = "V";
    instance5.TextColor3 = Color3.fromRGB(200, 30, 30);
    instance5.TextSize = 22;
    instance5.Font = Enum.Font.GothamBlack;
    instance5.ZIndex = 201;
    instance5.Parent = instance2;
    local instance6 = Instance.new("Frame");
    instance6.Name = "MainFrame";
    instance6.Size = UDim2.new(0, 220, 0, 155);
    instance6.Position = UDim2.new(0.5, -110, 0.5, -77);
    instance6.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
    instance6.BorderSizePixel = 0;
    instance6.Active = true;
    instance6.Draggable = true;
    instance6.Visible = false;
    instance6.ZIndex = 100;
    instance6.Parent = instance;
    local instance7 = Instance.new("UICorner");
    instance7.CornerRadius = UDim.new(0, 10);
    instance7.Parent = instance6;
    local instance8 = Instance.new("UIStroke");
    instance8.Color = Color3.fromRGB(60, 0, 0);
    instance8.Thickness = 1;
    instance8.Transparency = 0.5;
    instance8.Parent = instance6;
    local instance9 = Instance.new("Frame");
    instance9.Size = UDim2.new(1, 0, 0, 35);
    instance9.BackgroundTransparency = 1;
    instance9.ZIndex = 100;
    instance9.Parent = instance6;
    local instance10 = Instance.new("Frame");
    instance10.Size = UDim2.new(1, -16, 0, 1);
    instance10.Position = UDim2.new(0, 8, 0, 34);
    instance10.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    instance10.BorderSizePixel = 0;
    instance10.ZIndex = 100;
    instance10.Parent = instance9;
    local instance11 = Instance.new("Frame");
    instance11.Size = UDim2.new(0, 22, 0, 22);
    instance11.Position = UDim2.new(0, 8, 0.5, -11);
    instance11.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    instance11.BorderSizePixel = 0;
    instance11.ZIndex = 100;
    instance11.Parent = instance9;
    local instance12 = Instance.new("UICorner");
    instance12.CornerRadius = UDim.new(0, 5);
    instance12.Parent = instance11;
    local instance13 = Instance.new("TextLabel");
    instance13.Size = UDim2.new(1, 0, 1, 0);
    instance13.BackgroundTransparency = 1;
    instance13.Text = "V";
    instance13.TextColor3 = Color3.fromRGB(255, 255, 255);
    instance13.TextSize = 14;
    instance13.Font = Enum.Font.GothamBlack;
    instance13.ZIndex = 100;
    instance13.Parent = instance11;
    local instance14 = Instance.new("TextLabel");
    instance14.Size = UDim2.new(0, 150, 1, 0);
    instance14.Position = UDim2.new(0, 35, 0, 0);
    instance14.BackgroundTransparency = 1;
    instance14.Text = "VRSS | Broken Bones";
    instance14.TextColor3 = Color3.fromRGB(255, 255, 255);
    instance14.TextSize = 13;
    instance14.Font = Enum.Font.GothamBlack;
    instance14.TextXAlignment = Enum.TextXAlignment.Left;
    instance14.ZIndex = 100;
    instance14.Parent = instance9;
    local instance15 = Instance.new("TextButton");
    instance15.Size = UDim2.new(0, 20, 0, 20);
    instance15.Position = UDim2.new(1, -26, 0, 7);
    instance15.BackgroundColor3 = Color3.fromRGB(40, 40, 48);
    instance15.Text = "X";
    instance15.TextColor3 = Color3.fromRGB(200, 200, 200);
    instance15.TextSize = 10;
    instance15.Font = Enum.Font.GothamBold;
    instance15.BorderSizePixel = 0;
    instance15.ZIndex = 100;
    instance15.Parent = instance9;
    local instance16 = Instance.new("UICorner");
    instance16.CornerRadius = UDim.new(0, 5);
    instance16.Parent = instance15;
    instance15.MouseEnter:Connect(function(...)
        tween = TweenService:Create(instance15, TweenInfo.new(.2), {
            ["BackgroundColor3"] = Color3.fromRGB(200, 40, 40)
        });
        tween:Play();
        return; 
    end);
    instance15.MouseLeave:Connect(function(...)
        tween = TweenService:Create(instance15, TweenInfo.new(.2), {
            ["BackgroundColor3"] = Color3.fromRGB(40, 40, 48)
        });
        tween:Play();
        return; 
    end);
    instance15.MouseButton1Click:Connect(function(...)
        instance6.Visible = false;
        instance2.Visible = true;
        return; 
    end);
    local instance17 = Instance.new("Frame");
    instance17.Size = UDim2.new(1, -20, 0, 38);
    instance17.Position = UDim2.new(0, 10, 0, 45);
    instance17.BackgroundColor3 = Color3.fromRGB(28, 28, 36);
    instance17.BorderSizePixel = 0;
    instance17.ZIndex = 100;
    instance17.Parent = instance6;
    local instance18 = Instance.new("UICorner");
    instance18.CornerRadius = UDim.new(0, 8);
    instance18.Parent = instance17;
    local instance19 = Instance.new("TextLabel");
    instance19.Size = UDim2.new(0, 100, 1, 0);
    instance19.Position = UDim2.new(0, 10, 0, 0);
    instance19.BackgroundTransparency = 1;
    instance19.Text = "Auto Farm";
    instance19.TextColor3 = Color3.fromRGB(190, 190, 200);
    instance19.TextSize = 13;
    instance19.Font = Enum.Font.GothamMedium;
    instance19.TextXAlignment = Enum.TextXAlignment.Left;
    instance19.ZIndex = 100;
    instance19.Parent = instance17;
    local instance20 = Instance.new("TextLabel");
    instance20.Size = UDim2.new(0, 30, 1, 0);
    instance20.Position = UDim2.new(1, -75, 0, 0);
    instance20.BackgroundTransparency = 1;
    instance20.Text = "OFF";
    instance20.TextColor3 = Color3.fromRGB(200, 0, 0);
    instance20.TextSize = 10;
    instance20.Font = Enum.Font.GothamBold;
    instance20.ZIndex = 100;
    instance20.Parent = instance17;
    local instance21 = Instance.new("Frame");
    instance21.Size = UDim2.new(0, 36, 0, 18);
    instance21.Position = UDim2.new(1, -44, 0.5, -9);
    instance21.BackgroundColor3 = Color3.fromRGB(55, 55, 65);
    instance21.BorderSizePixel = 0;
    instance21.ZIndex = 100;
    instance21.Parent = instance17;
    local instance22 = Instance.new("UICorner");
    instance22.CornerRadius = UDim.new(1, 0);
    instance22.Parent = instance21;
    local instance23 = Instance.new("Frame");
    instance23.Size = UDim2.new(0, 14, 0, 14);
    instance23.Position = UDim2.new(0, 2, 0.5, -7);
    instance23.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    instance23.BorderSizePixel = 0;
    instance23.ZIndex = 100;
    instance23.Parent = instance21;
    local instance24 = Instance.new("UICorner");
    instance24.CornerRadius = UDim.new(1, 0);
    instance24.Parent = instance23;
    local instance25 = Instance.new("Frame");
    instance25.Size = UDim2.new(1, -20, 0, 55);
    instance25.Position = UDim2.new(0, 10, 0, 90);
    instance25.BackgroundColor3 = Color3.fromRGB(28, 28, 36);
    instance25.BorderSizePixel = 0;
    instance25.ZIndex = 100;
    instance25.Parent = instance6;
    local instance26 = Instance.new("UICorner");
    instance26.CornerRadius = UDim.new(0, 8);
    instance26.Parent = instance25;
    local instance27 = Instance.new("TextLabel");
    instance27.Size = UDim2.new(1, -16, 0, 16);
    instance27.Position = UDim2.new(0, 8, 0, 6);
    instance27.BackgroundTransparency = 1;
    instance27.Text = "Speed: " .. r32;
    instance27.TextColor3 = Color3.fromRGB(190, 190, 200);
    instance27.TextSize = 11;
    instance27.Font = Enum.Font.GothamMedium;
    instance27.TextXAlignment = Enum.TextXAlignment.Left;
    instance27.ZIndex = 100;
    instance27.Parent = instance25;
    local instance28 = Instance.new("Frame");
    instance28.Size = UDim2.new(1, -16, 0, 4);
    instance28.Position = UDim2.new(0, 8, 0, 28);
    instance28.BackgroundColor3 = Color3.fromRGB(45, 45, 55);
    instance28.BorderSizePixel = 0;
    instance28.ZIndex = 100;
    instance28.Parent = instance25;
    local instance29 = Instance.new("UICorner");
    instance29.CornerRadius = UDim.new(1, 0);
    instance29.Parent = instance28;
    local instance30 = Instance.new("Frame");
    instance30.Size = UDim2.new((r32 - 50) / 2150, 0, 1, 0);
    instance30.BackgroundColor3 = Color3.fromRGB(180, 0, 0);
    instance30.BorderSizePixel = 0;
    instance30.ZIndex = 100;
    instance30.Parent = instance28;
    local instance31 = Instance.new("UICorner");
    instance31.CornerRadius = UDim.new(1, 0);
    instance31.Parent = instance30;
    local instance32 = Instance.new("TextButton");
    instance32.Size = UDim2.new(0, 18, 0, 18);
    instance32.Position = UDim2.new((r32 - 50) / 2150, -9, 0, -7);
    instance32.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
    instance32.Text = "";
    instance32.BorderSizePixel = 0;
    instance32.ZIndex = 100;
    instance32.Parent = instance28;
    local instance33 = Instance.new("UICorner");
    instance33.CornerRadius = UDim.new(1, 0);
    instance33.Parent = instance32;
    local r51 = false;
    instance32.InputBegan:Connect(FS);
    instance28.InputBegan:Connect(FS);
    instance30.InputBegan:Connect(FS);
    UserInputService.InputEnded:Connect(function(arg1_6, ...)
        return; 
    end);
    UserInputService.InputChanged:Connect(function(arg1_7, ...)
        if not r51 then
            return;
        end;
        if y.UserInputType == Enum.UserInputType.MouseMovement then
            r52(UserInputService:GetMouseLocation().X);
        end;
        if y.UserInputType == Enum.UserInputType.Touch or y.UserInputType == Enum.UserInputType.TouchPan then
            r52(y.Position.X);
        end;
        return; 
    end);
    UserInputService.TouchMoved:Connect(function(arg1_8, arg2_8, ...)
        if r51 then
            r52(arg1_8.Position.X);
        end;
        return; 
    end);
    local r53 = false;
    local function r54()
        if r53 then
            local tween = TweenService:Create(instance21, TweenInfo.new(.2), {
                ["BackgroundColor3"] = Color3.fromRGB(0, 160, 0)
            });
            tween:Play();
            tween = TweenService:Create(instance23, TweenInfo.new(.2), {
                ["Position"] = UDim2.new(1, -16, 0.5, -7)
            });
            tween:Play();
            instance20.Text = "ON";
            instance20.TextColor3 = Color3.fromRGB(0, 200, 0);
        else
            local tween = TweenService:Create(instance21, TweenInfo.new(.2), {
                ["BackgroundColor3"] = Color3.fromRGB(55, 55, 65)
            });
            tween:Play();
            tween = TweenService:Create(instance23, TweenInfo.new(.2), {
                ["Position"] = UDim2.new(0, 2, 0.5, -7)
            });
            tween:Play();
            instance20.Text = "OFF";
            instance20.TextColor3 = Color3.fromRGB(200, 0, 0);
        end; 
    end;
    instance17.InputBegan:Connect(function(arg1_9, ...)
        if y.UserInputType == Enum.UserInputType.MouseButton1 or (y.UserInputType == Enum.UserInputType.Touch or (y.UserInputType == Enum.UserInputType.TouchTap or y.UserInputType == Enum.UserInputType.TouchLongPress)) then
            r53 = not r53;
            r31.AutoFarm = r53;
            r54();
            if r53 then
                r36();
            else
                r37();
            end;
        end;
        return; 
    end);
    instance2.InputBegan:Connect(function(arg1_10, ...)
        if y.UserInputType == Enum.UserInputType.MouseButton1 or (y.UserInputType == Enum.UserInputType.Touch or (y.UserInputType == Enum.UserInputType.TouchTap or y.UserInputType == Enum.UserInputType.TouchLongPress)) then
            instance6.Visible = not instance6.Visible;
        end;
        return; 
    end);
    spawn(function(...)
        while not instance do
            if instance then
                for y = 0, 1, .03 do
                    if not (not instance5 or not instance5.Parent) then
                        g = .4 + math.sin(instance * math.pi * 2) * .6;
                        instance5.TextColor3 = Color3.fromRGB(200 + 55 * g, 0, 0);
                        instance4.Transparency = .7 - g * 0.5;
                        task.wait(.03);
                    end; 
                end;
            end;
            return; 
        end;
        v3 = instance["Parent"];
        if v3 then
            --fail
        end; 
    end);
    UserInputService.InputBegan:Connect(function(arg1_11, arg2_11, ...)
        if arg2_11 then
            return;
        end;
        if arg1_11.KeyCode == Enum.KeyCode.RightControl then
            instance6.Visible = not instance6.Visible;
            if not instance6.Visible then
                instance2.Visible = true;
            end;
        end;
        return; 
    end);
    print("[VRSS | Broken Bones] Loaded! \\ t.me/HiVRSS");
    return;
else
    --fail
end;
