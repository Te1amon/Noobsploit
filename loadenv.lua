-- idk how to add this via c++ so here you go
-- Made by Telamon

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

getgenv().apicommand = function(cmd)
if cmd == "suicide" or cmd == "commitdie" then
        player = game:GetService("Players").LocalPlayer
        if player.Character:FindFirstChild("Humanoid")
            player.Character.Humanoid.Health = 0
            player.Character:BreakJoints()
            else
            -- no
            end
        else
        -- a
        end
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

getgenv().GetInstanceList = function()
pog = {}
num = 0
for i,v in pairs(game:GetDescendants()) do
num = num + 1
table.insert(pog, num, v)
end
return pog
end
getgenv().getnilinstances = function()
    local inst = GetInstanceList()
    local r = {}

    for i, v in pairs(inst) do
        if typeof(v) == "Instance" and v.Parent == nil then 
            r[#r + 1] = v 
        end
    end

    return r
end

getgenv().get_nil_instances = getnilinstances

getgenv().getinstances = function()
    local inst = GetInstanceList()
    local r = {}

    for i, v in pairs(inst) do
        if typeof(v) == "Instance" then 
            r[#r + 1] = v 
        end
    end

    return r
end

getgenv().get_instances = getinstances

getgenv().getscripts = function()
    local inst = GetInstanceList()
    local r = {}

    for i, v in pairs(inst) do
        if typeof(v) == "Instance" and (v:IsA("LocalScript") or v:IsA("ModuleScript")) and not v.RobloxLocked then 
            r[#r + 1] = v 
        end
    end

    return r
end

getgenv().get_scripts = getscripts

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
    if type(f) ~= "function" then
        error("newcclosure error: argument f is not a vaild function")
        else
return f 
        end
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

getgenv().mousemoverel = function(x, y)
lol = game:GetService("VirtualUser")
plrs = game:GetService("Players")
mouse = plrs.LocalPlayer:GetMouse()
cframething = CFrame.new(mouse.Hit.X, mouse.Hit.Y, mouse.Hit.Z)
--------
lol:CaptureController()
lol:MoveMouse(Vector2.new(x, y), cframething)
end

getgenv().getrawmetatable = function(obj) -- this is test
    pog = getmetatable(obj)
    dog = make_writeable(pog)
    return dog
 end

getgenv().setobjectname = function(obj, name)
    if obj then
        obj.Name = name
        else
        -- oop
        end
end

getgenv().error = function(str) -- Prevents crashing Noobsploit on script error
    warn(str)
    end

getgenv().isluau = function() -- just for legacy purposes
    return true
    end

getgenv().hookfunction = function(old, new) -- be careful with this one
    if type(old) ~= "function" then error("expected function as argument #1") end
    if type(new) ~= "function" then error("expected function as argument #2") end
    local hook
     hook = new
    stuff = {
        old,
        hook
        }
    return stuff
end

get_thread_identity = getthreadcontext
set_thread_identity = setthreadcontext

Noobsploit_Loaded = true
