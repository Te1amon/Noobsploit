_G.aPksAMV2S9w3P7 = not _G.aPksAMV2S9w3P7
if _G.ZAArasCg13ktwD then
  -- no
  else
function ClosestPlayer()
		local MaxDist, Closest = math.huge
		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer and v.Character then
				local Head = v.Character.FindFirstChild(v.Character, "Head")
				if Head then 
					local Pos, Vis = workspace.Camera.WorldToScreenPoint(workspace.Camera, Head.Position)
					if Vis then
						local MousePos, TheirPos = Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y), Vector2.new(Pos.X, Pos.Y)
						local Dist = (TheirPos - MousePos).Magnitude
						if Dist < MaxDist then
							MaxDist = Dist
							Closest = v
							_G.ClosestPerson = v
						end
					end
				end
			end
		end
		return Closest
	end

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
	 if _G.aPksAMV2S9w3P7 and game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
        ClosestPlayer()
        workspace.CurrentCamera.CoordinateFrame = CFrame.new(workspace.CurrentCamera.CoordinateFrame.p, _G.ClosestPerson.Character["Head"].CFrame.p)
	 end
        end)
    end)
  end
_G.ZAArasCg13ktwD = true
