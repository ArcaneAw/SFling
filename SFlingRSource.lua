local function GetPlayerByDisplayname(String)
    local plr
    local strl = String:lower()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.DisplayName:lower():sub(1, #String) == String:lower() then
                plr = v
            end 
        end
        if String == "" or String == " " then
           plr = nil
        end
    return plr
end

local function GetPlayerByName(String)
    local plr
    local strl = String:lower()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                plr = v
            end 
        end
        if String == "" or String == " " then
           plr = nil
        end
    return plr
end

if game.Players.LocalPlayer.Name == getgenv().Alt then
    game:service('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-173, 56, 136)
    wait(1)
        for i, v in next, game.Workspace:GetDescendants() do
            if v:IsA("Seat") then
            v:Destroy()
        end
    end
game:GetService("Players")[getgenv().Owner].Chatted:Connect(function(msg1)
    if game.Players.LocalPlayer.Name == getgenv().Alt then
        local msg = string.split(msg1," ")

        if msg[1]:lower() == getgenv().command and msg[2] then
            pcall(function()
                    local power = 70000
                local player = game.Players.LocalPlayer
                local Players = game:GetService('Players')
                local oldpos1 = player.Character.HumanoidRootPart.CFrame
                    local target = GetPlayerByDisplayname(msg[2]) or GetPlayerByName(msg[2])
                    if target then
                        local HumanoidRootPart = player.Character.HumanoidRootPart
                        local UIS = game:GetService('UserInputService')
                        local Loop
                        flinging = true
                        local loopFunction = function()
                            local success,err = pcall(function()
                                if target.Character then
                                    local OrientationX = HumanoidRootPart.Orientation.X
                                    local OrientationY = HumanoidRootPart.Orientation.Y
                                    local OrientationZ = HumanoidRootPart.Orientation.Z
                                    local dis = 3.85
                                    local randomx = math.random(-dis,dis)
                                    local randomz = math.random(-dis,dis)
                                    local enemycheck = target.Character
                                    if enemycheck then
                                        local enemy = enemycheck:FindFirstChild('UpperTorso')
                                        if enemy then
                                            local increase = 5
                                            
                                            local xchange
                                            local zchange
                                            local xp = tostring(enemy.Parent:WaitForChild('Humanoid').MoveDirection.X)
                                            local zp = tostring(enemy.Parent:WaitForChild('Humanoid').MoveDirection.Z)
                            
                                            if string.find(xp, '-') then
                                                xchange = -increase
                                            else
                                                xchange = increase
                                            end
                                            if string.find(zp, '-') then
                                                zchange = -increase
                                            else
                                                zchange = increase
                                            end
                                            if enemy.Parent.Humanoid.MoveDirection.X == 0 then
                                                xchange = 0
                                            end
                                            if enemy.Parent.Humanoid.MoveDirection.Z == 0 then
                                                zchange = 0 
                                            end
                                            
                                            if game.Players.LocalPlayer.Character then
                                                player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                                                HumanoidRootPart.CFrame = CFrame.new(enemy.Position.X + randomx + enemy.Parent.Humanoid.MoveDirection.X + xchange, enemy.Position.Y, enemy.Position.Z + randomz + enemy.Parent.Humanoid.MoveDirection.Z + zchange) * CFrame.Angles(math.rad(OrientationX + 270),math.rad(OrientationY + 150),math.rad(OrientationZ + 180))
                                                HumanoidRootPart.Velocity = Vector3.new(power,power,power)
                                            end
                                        end
                                    end
                                end
                            end)
                        end;
                        local Start = function()
                            oldpos1 = HumanoidRootPart.Position
                            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
                        end;
                        local Pause = function()
                            Loop:Disconnect()
                            flinging = false
                            local vectorZero = Vector3.new(0, 0, 0)
                            player.Character.PrimaryPart.Velocity = vectorZero
                            player.Character.PrimaryPart.RotVelocity = vectorZero
                            HumanoidRootPart.CFrame = CFrame.new(oldpos1) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
                        end;
                        Start()	
                            wait(3)
                                if flinging == true then
                                    Pause()
				Pause()
				wait(0.5)
				game:service('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-173, 56, 136)
                            end
                        end
                    end)
                end
            end
        end)
end
