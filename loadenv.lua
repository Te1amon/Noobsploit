if not game:IsLoaded() then
	game.Loaded:Wait()
end

function loadthing()
	startergui = game:GetService("StarterGui")
	startergui:SetCore("SendNotification", {Title="Noobsploit"; Text="Thanks for choosing Noobsploit!"; Duration=5;})
	
	getgenv().drawhiddengui = function()
		gui = Instance.new("ScreenGui")
		gui.Name = randomString()
		gui.Parent = game:GetService("CoreGui")
		return gui
	end

	getgenv().drawhiddenframe = function(screengui)
		frame = Instance.new("Frame")
		frame.Name = randomString()
		frame.Parent = screengui
		return frame
	end

	getgenv().setpublicproperty = function(object, property, value)
		object[property] = value
	end

	getgenv().createlibfunc = function(name, func)
		getgenv()[name] = func
	end
end

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(pog)
		if pog == Enum.TeleportState.InProgress then
		game.Loaded:Wait()
		loadthing()
		end
	end
)
