-- bad custom env for reflex
-- coded by te1amon

getgenv().Reflex_Loaded = true
getgenv().api = {}

getgenv().identifyexecutor = function()
  return "Reflex"
  end

getgenv().spoofexecutor = function(exe)
  if exe == "PROTOSMASHER" then
    getgenv().PROTOSMASHER_LOADED = true
    end
  if exe == "SYNAPSE" then
    getgenv().syn = true
    end
  end

getgenv().getscripts = function()
  lol = {}
  for i,v in pairs(game:GetDescendants()) do
    if v:IsA("LocalScript") or v:IsA("ModuleScript") then
      table.insert(lol, v)
      end
    end
  return lol
  end

-- running scripts through pcallstring prevents detections in certain games that look for errors
getgenv().pcallstring = function(a)
  pcall(function()
      loadstring(a)
      end)
  end

getgenv().api.killhumanoid = function()
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end

getgenv().api.SetWalkSpeed = function(a)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(a)
  end
