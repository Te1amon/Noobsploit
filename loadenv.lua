-- for 5.7.7 (and higher)


function ReturnString() -- Returns a random string
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

getgenv().loadfile = function(path)
exec = loadstring
file = readfile(path)
exec(file)
end

getgenv().drawhiddengui = function()
gui = Instance.new("ScreenGui")
gui.Name = ReturnString()
gui.Parent = game:GetService("CoreGui")
return gui
end

getgenv().drawhiddenframe = function(screengui)
frame = Instance.new("Frame")
frame.Name = ReturnString()
frame.Parent = screengui
return frame
end

getgenv().setpublicproperty = function(object, property, value)
object[property] = value
end

getgenv().getpublicproperty = function(object, property)
  return object[property]
end

getgenv().setmaxsimulationradius = function(num)
  players = game:GetService("Players")
  setpublicproperty(players.LocalPlayer, "MaximumSimulationRadius", num)
  end

getgenv().createlibfunc = function(name, func)
  getgenv()[name] = func
  end

getgenv().getinstances = function()
instances = {}
	currentnum = 0
  for i,v in pairs(game:GetDesendents) do
	if v ~= nil then
	currentnum = currentnum + 1
		table.insert(instances, currentnum, v)
	end
	end
	
	wait()
	currentnum = 0
	return instances
  end

getgenv().fireclickdetector = function(clickdetector, distance) -- the argument distance doesnt do anything lol
  players = game:GetService("Players")
  mouse = players.LocalPlayer:GetMouse()
  part = clickdetector.Parent
  click = clickdetector
  oldpos = part.Position
  oldradius = clickdetector.MaxActivationDistance
  part.Position = mouse.hit.p
  clickdetector.MaxActivationDistance = math.huge
  mouse1click()
  wait()
  part.Position = oldpos
  clickdetector.MaxActivationDistance = oldradius
  end

getgenv().firetouchinterest = function(Part, ToTouch, Toggle) -- toggle actually does something, your welcome
  if Toggle == 0 then
    lol = Instance.new("ObjectValue")
    lol.Value = Part.Parent
    Part.Parent = ToTouch:FindFirstChild("TouchInterest")
    elseif Toggle == 1 then
    Part.Parent = Part:FindFirstChild("Value").Value
    Part.Value:Destroy()
    else
    -- that toggle doesnt exist wth
  end
  end

getgenv().newcclosure = function(f) -- gonna test this later
return f 
end

getgenv().make_writeable = function(hhh)
    return setreadonly(hhh, false)
end

getgenv().getsenv = function(a)
    for b, c in next, getreg() do
        if type(c) == "function" and getfenv(c).script == a then
            return getfenv(c)
        end
    end
    return nil
end

getgenv().rescan = function()
if game.PlaceId == 2377868063 then
    getgenv().print = function()
    end
    getgenv().warn = function()
    end
    getgenv().info = function()
    end
	else
	-- dont do anything to the environment
end	
	end

Noobsploit_Loaded = true
