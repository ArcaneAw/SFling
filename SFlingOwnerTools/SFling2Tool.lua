loadstring(game:HttpGet("https://raw.githubusercontent.com/ArcaneAw/boombox/main/boombox.lua", true))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ArcaneAw/iyedit/main/AC'))()

function Tool3()
local Tool = Instance.new("Tool")
Tool.RequiresHandle = false
Tool.ToolTip = "Fling tool"
Tool.TextureId = "rbxassetid://3429559393"
Tool.Name = "Fling"

local LocalMouse = game.Players.LocalPlayer:GetMouse()
local UserInputService = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer


getgenv().Fov = 100
getgenv().Circle = true

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(25,25,25)
circle.Thickness = 0
circle.NumSides = 732
circle.Radius = getgenv().Fov
circle.Thickness = 0
circle.Transparency = 0
circle.Visible = getgenv().Circle
circle.Filled = false


	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
				local pos = game:GetService"Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
				local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
				if magnitude < shortestDistance then
					closestPlayer = v
					shortestDistance = magnitude
				end
			end
		end
		return closestPlayer
	end

Tool.Activated:Connect(function()
    local Character = game:GetService("Players").LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

        	plr =  getClosestPlayerToCursor()
            local A_1 = getgenv().command..tostring(plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2)
            
            local Swing = Instance.new('Animation');
            Swing.AnimationId = "rbxassetid://3096047107";
			local ld = game:GetService('Players').LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):LoadAnimation(Swing)
            ld:Play()
			ld:AdjustSpeed(0.45)
			wait(0.5)
			ld:AdjustSpeed(0.25)
			Play(3475534419, true, true)--9125784450
            wait(2.7)
		    StopAudio()

end)
Tool.Parent = game:GetService("Players").LocalPlayer.Backpack
end
