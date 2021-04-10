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
  for i,v in pairs(game:GetDesendents()) do
    if v ~= nil then
    currentnum = currentnum + 1
        table.insert(instances, currentnum, v)
    end
    end
    
    wait()
    currentnum = 0
    return instances
  end

getgenv().getscripts = function()
scripttable = {}
scriptnum = 0
for i,v in pairs(game:GetDesendents()) do
if v ~= nil and v.Parent ~= nil then
if v:IsA("LocalScript") or v:IsA("ModuleScript") then
scriptnum = scriptnum + 1
table.insert(scripttable, scriptnum, v)
else
end
else
end
end
    wait()
    scriptnum = 0
    return scripttable
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

getgenv().firetouchinterest = function(Part, ToTouch, Toggle) -- toggle still does nothing
    oldpos = Part.Position
    oldanc = Part.Anchored
    Part.Anchored = true
    Part.Position = ToTouch.Position
    wait()
    Part.Position = oldpos
    Part.Anchored = oldanc
end

getgenv().newcclosure = function(f)
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

getgenv().decompile = function(scriptt)
result = "-- Dumped with the Noobsploit LuaU decompiler (Version 1.0.0)\n"
  for i,v in next, getreg() do
      if type(v) == "function" and getfenv(v).script == scriptt then
          for e,p in next, getfenv(v) do
              result = result.."\n"..tostring(e)..", "..tostring(p)
           end
       end
   end
  wait()
  return result
end

getgenv().mousemoverel = function(x, y)
lol = game:GetService("VirtualUser")
plrs = game:GetService("Players")
mouse = plrs.LocalPlayer:GetMouse()
cframething = CFrame.new(mouse.Hit.X, mouse.Hit.Y, mouse.Hit.Z)
--------
lol:CaptureController()
lol:MoveMouse(Vector2.new(x, y), cframething)
end

getgenv().getrawmetatable = function()
return getmetatable(game)
end

Noobsploit_Loaded = true
