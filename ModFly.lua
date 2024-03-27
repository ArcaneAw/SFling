loadstring(game:HttpGet('https://raw.githubusercontent.com/ArcaneAw/boombox/main/AC'))()

function Fly()
	function sandbox(var,func)
		local env = getfenv(func)
		local newenv = setmetatable({},{
			__index = function(self,k)
				if k=="script" then
					return var
				else
					return env[k]
				end
			end,
		})
		setfenv(func,newenv)
		return func
	end
	cors = {}
	mas = Instance.new("Model",game:GetService("Lighting"))
	Tool0 = Instance.new("Tool")
	LocalScript1 = Instance.new("LocalScript")
	Animation4 = Instance.new("Animation")
	RemoteEvent5 = Instance.new("RemoteEvent")
	Animation6 = Instance.new("Animation")
	Tool0.Name = "Fly"
	Tool0.Parent = nil
	Tool0.CanBeDropped = false
	Tool0.RequiresHandle = false
	LocalScript1.Name = "local"
	LocalScript1.Parent = Tool0
	table.insert(cors,sandbox(LocalScript1,function()
		wait();
		local l__LocalPlayer__1 = game.Players.LocalPlayer;
		while true do
			wait();
			if l__LocalPlayer__1.Character then
				break;
			end;
		end;
		local l__Character__2 = l__LocalPlayer__1.Character;
		local l__Humanoid__3 = l__Character__2:WaitForChild("Humanoid");
		local l__Parent__4 = script.Parent;
		local u1 = false;
		local u2 = l__Humanoid__3:LoadAnimation(script.Hover);
		local u3 = nil;
		local u4 = nil;
		local u5 = false;
		local u6 = false;
		local u7 = l__Humanoid__3:LoadAnimation(script.Fly);
        local fly = false;
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local speed = false;
        local Land = Instance.new('Animation', game.ReplicatedStorage)
        Land.AnimationId = 'rbxassetid://3539706018'
        local Landing = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Land)
        game:GetService("UserInputService").InputBegan:Connect(function(Input)
            if Input.KeyCode == Enum.KeyCode.X and fly == false then
                if game:GetService("UserInputService"):GetFocusedTextBox() then return end
                Play(9120706614, true, true)
                fly = true;
                u1 = true;
                u2:Play();
                u3 = Instance.new("BodyGyro");
                u3.Name = "NA";
                u3.Parent = l__Character__2.HumanoidRootPart;
                u3.MaxTorque = Vector3.new(30000, 0, 30000);
                u3.P = u3.P * 5;
                u3.CFrame = CFrame.new(0, 0, 0);
                u4 = Instance.new("BodyPosition");
                u4.Name = "NA";
                u4.Parent = l__Character__2.HumanoidRootPart;
                u4.MaxForce = Vector3.new(60000, 60000, 60000);
                u4.Position = l__Character__2.HumanoidRootPart.Position + Vector3.new(0,8,0)
                BP.P = 10000
                BP.D = 300
            end;
        end);
            game:GetService("UserInputService").InputBegan:Connect(function(Input)
                if Input.KeyCode == Enum.KeyCode.W then
                    if game:GetService("UserInputService"):GetFocusedTextBox() then return end
                    if u5 or u1 == false then
                        return;
                    end;
                    game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.3), {FieldOfView = 78}):Play()
                    Play(9120705982, true, true)
                    wait(0.1)
                    coroutine.wrap(function()
                        repeat game:GetService("RunService").Stepped:Wait() until game:GetService("Players").LocalPlayer.Character.Humanoid.FloorMaterial ~= Enum.Material.Air
                        if u6 == false then return end
                        game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.45), {FieldOfView = 70}):Play()
                        all = false
                        Play(134854740, true, true)
                        Landing:Play()
                        Landing:AdjustSpeed(5)
                        u1 = false;
                        u6 = false;
                        if u3 then
                            u3:Destroy();
                            u3 = nil;
                        end
                        if u4 then
                            u4:Destroy();
                            u4 = nil;
                        end
                        if u2.IsPlaying then
                            u2:Stop();
                        end;
                        wait(0.1)
                        coroutine.wrap(function()
                        wait(0.25)
                        Landing:AdjustSpeed(0)
                        wait(0.65)
                        Landing:AdjustSpeed(1)
                        end)()
                        u4 = Instance.new("BodyPosition");
                        u4.Name = "NA";
                        u4.Parent = l__Character__2.HumanoidRootPart;
                        u4.MaxForce = Vector3.new(60000, 60000, 60000);
                        u4.Position = l__Character__2.HumanoidRootPart.Position;
                        wait(2.1)
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildWhichIsA("BodyPosition"):Destroy()
                        all = true
                        wait(0.5)
                        fly = false;
                    end)()
                    u5 = true;
                    u6 = true;
                    u7:Play();
                    local v5 = Instance.new("BodyVelocity", l__Character__2.HumanoidRootPart);
                    v5.MaxForce = Vector3.new(50000, 50000, 50000);
                    v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, Mouse.Hit.p).lookVector * 85;
                    u3.MaxTorque = Vector3.new(30000, 30000, 30000);
                    u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, Mouse.Hit.p);
                    u4.Parent = nil;
                    l__Humanoid__3.AutoRotate = false;
                    if u2.IsPlaying then
                        u2:Stop();
                    end;
                    while u6 do
                        v5.Velocity = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, Mouse.Hit.p).lookVector * 135;
                        u3.CFrame = CFrame.new(l__Character__2.HumanoidRootPart.CFrame.p, Mouse.Hit.p);
                        game:GetService("RunService").Stepped:Wait()
                    end;
                    l__Humanoid__3.AutoRotate = true;
                    v5:Destroy();
                    if u4 ~= nil then
                        u4.Position = l__Character__2.HumanoidRootPart.Position;
                        u4.Parent = l__Character__2.HumanoidRootPart;
                    end;
                    if u3 ~= nil then
                        u3.MaxTorque = Vector3.new(30000, 0, 30000);
                        u3.CFrame = CFrame.new(0, 0, 0);
                    end;
                    u6 = false;
                    if u1 then
                        u2:Play();
                    end;
                    u7:Stop();
                    wait(0.3);
                    u5 = false;
                end;
			end);
            game:GetService("UserInputService").InputEnded:Connect(function(Input)
                if Input.KeyCode == Enum.KeyCode.W then
                    if game:GetService("UserInputService"):GetFocusedTextBox() then return end
                    u6 = false;
                    game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.4), {FieldOfView = 70}):Play()
                end;
			end);
        game:GetService("UserInputService").InputBegan:Connect(function(Input)
            if Input.KeyCode == Enum.KeyCode.X and fly == true then
                if game:GetService("UserInputService"):GetFocusedTextBox() then return end
                game:GetService("TweenService"):Create(workspace.CurrentCamera, TweenInfo.new(0.55), {FieldOfView = 70}):Play()
                u1 = false;
                u6 = false;
                u3:Destroy();
                u3 = nil;
                u4:Destroy();
                u4 = nil;
                if u2.IsPlaying then
                    u2:Stop();
                end;
                wait(0.5)
                fly = false;
                Play(2892218731, true, true)
            end;
		end);
	end))
	Animation4.Name = "Hover"
	Animation4.Parent = LocalScript1
	Animation4.AnimationId = "rbxassetid://3541114300"
	RemoteEvent5.Name = "re"
	RemoteEvent5.Parent = LocalScript1
	Animation6.Name = "Fly"
	Animation6.Parent = LocalScript1
	Animation6.AnimationId = "rbxassetid://3084858603"
	for i,v in pairs(mas:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
		pcall(function() v:MakeJoints() end)
	end
	mas:Destroy()
	for i,v in pairs(cors) do
		spawn(function()
			pcall(v)
		end)
	end
end