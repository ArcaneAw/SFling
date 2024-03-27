function Tool1()
local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.ToolTip = "Dash tool"
Tool.TextureId = "rbxassetid://8961926727"
Tool.Name = "Dash"
local Plr = game.Players.LocalPlayer.Character
local Plr2 = game.Players.LocalPlayer

loadstring(game:HttpGet("https://raw.githubusercontent.com/ArcaneAw/boombox/main/boombox.lua", true))()

function Punch()
	Plr.Humanoid:UnequipTools()
	wait(0.01)
	Plr.Humanoid:EquipTool(Plr2.Backpack.Combat)
	wait(0.01)
	Plr.Combat:Activate()
	wait(1.3)
		Plr.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -20)
	Plr.Combat:Deactivate()
	wait(0.1)
	Plr.Humanoid:EquipTool(Plr2.Backpack.Dash)
end

function blur()
    TweenService = game:GetService("TweenService")
    TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 85}):Play()
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = -1}):Play()
    local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
    TweenService:Create(blur, TweenInfo.new(0.8), {Size = 10}):Play()
    wait(0.45)
    TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.5), {FieldOfView = 70}):Play()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(250, 250, 250)
    TweenService:Create(blur, TweenInfo.new(0.8), {Size = 0}):Play()
    wait(0.45)
    TweenService:Create(game:GetService("Lighting").ColorCorrection, TweenInfo.new(0.8), {Saturation = 0}):Play()
end

Tool.Activated:Connect(function()
    local Character = game:GetService("Players").LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

    		Play(1336756135, true, true)
			local Swing = Instance.new('Animation');
			Swing.AnimationId = "rbxassetid://7861306542";
			local ld = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Swing)
			ld:Play()
			ld:AdjustSpeed(0.45)
			Punch()
			blur()
    	local Char = game.Players.LocalPlayer.Character local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
			while true do wait()
				for i,v in next, Hum:GetPlayingAnimationTracks() do
					if v.Animation.AnimationId == "rbxassetid://2788289281" then
						v:Stop()
						for i,v in next, Hum:GetPlayingAnimationTracks() do
							if v.Animation.AnimationId == "rbxassetid://2788292075" then
							    v:Stop()
							    local Swing = Instance.new('Animation');
			                    Swing.AnimationId = "rbxassetid://7861306542";
			                    local ld = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Swing)
			                    ld:Play()
			                    ld:AdjustSpeed(0.45)
							    ld.TimePosition = 3;
							    Play(558640653, true, true)
						end
					end
				end
		    end
		end
end)
Tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end
