-- bad custom env for noobsploit
-- coded by te1amon

getgenv().Reflex_Loaded = true

getgenv().identifyexecutor = function()
  return "Reflex"
  end
-- running scripts through pcallstring prevents detections in certain games that look for errors
getgenv().pcallstring = function(a)
  pcall(function()
      loadstring(a)
      end)
  end

getgenv().commitdie = function(a)
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end
