-- really crappy dumper thing

getgenv().decompile = function(scriptt)
result = "-- Generated with the Noobsploit LuaU decompiler (Version 1.0.3)\n"
pognum = 0
  for i,v in next, getreg() do
      if type(v) == "function" and getfenv(v).script == scriptt then
            for e,p in pairs(getfenv(v)) do
                if type(p) == "table" then
                 result = result.."\n"..tostring(e).." = {"
                    for r, t in pairs(p) do
                        result = result.."\n"..tostring(r).." = "..tostring(t)
                        end
                    wait()
                    result = result.."\n}\n\n"
                    elseif type(p) == "string" then
                    result = result.."\n"..tostring(e).." = '"..tostring(p).."'"
                    else
                      result = result.."\n"..tostring(e).." = "..tostring(p)
                    end
           end
        end
   end
  wait()
  return result
end
