-- really shit lua env for Noobsploit
-- coded by te1amon

function ReturnString() -- Returns a random string
    local length = math.random(10,20)
    local array = {}
    for i = 1, length do
        array[i] = string.char(math.random(32, 126))
    end
    return table.concat(array)
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

getgenv().loadchunk = function(mainchunk)
loadstring(mainchunk)
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

getgenv().make_writeable = function(hhh)
    return setreadonly(hhh, false)
end

getgenv().setobjectname = function(obj, name)
    if obj then
        obj.Name = name
        else
        -- oop
        end
end

getgenv().error = function(str) -- make it where some games cannot detect errors from the executor
    
    end

getgenv().isluau = function() -- just for legacy purposes
    return true
    end

getgenv().identifyexecutor = function()
return "Noobsploit"
end

get_thread_identity = getthreadcontext
set_thread_identity = setthreadcontext
write_clipboard = setclipboard
getgenv().protectgui = protect_gui
getgenv().Noobsploit_Loaded = true
getgenv().GetInstanceList = nil
