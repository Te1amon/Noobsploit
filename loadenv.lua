-- bad custom env for noobsploit
-- coded by te1amon

getgenv().Noobsploit_Loaded = true

-- running scripts through runscript prevents detections in certain games that look for errors
getgenv().runscript = function(a)
  pcall(function()
      loadstring(a)
      end)
  end

getgenv().commitdie = function(a)
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
  end
