-- Rewrote the entire thing, sorry for the large gaps
-- Made by Telamon ;)




getgenv().decompile = function(scriptt)
	output = "-- Generated with the Noobsploit Lua decompiler (Beta Re-Write)\n -- Keep is mind that some of the decompiled objects can be repeated multiples times when generated.\n"
	oldoutput = output
	for m,o in next, getreg() do
		if type(o) == "function" and getfenv(o).script == scriptt then




			for i,v in pairs(getfenv(o)) do




				if type(v) == "function" then




					output = output.."\n"..tostring(i).." = function()".."\n".."-- uh oh, stinky".."\n".."end;"




				elseif type(v) == "string" then




					output = output.."\n"..tostring(i).. " = '"..tostring(v).."';"




				elseif type(v) == "number" then




					output = output.."\n"..tostring(i).." = "..tonumber(v)




				elseif type(v) == "table" then




					output = output.."\n"..tostring(i).." = {"




					for r, t in pairs(v) do




						if type(t) == "function" then




							output = output.."\n"..tostring(r).." = function()".."\n".."-- uh oh, stinky".."\n".."end;"




						elseif type(t) == "string" then




							output = output.."\n"..tostring(r).. " = '"..tostring(t).."';"




						elseif type(t) == "number" then




							output = output.."\n"..tostring(r).." = "..tonumber(t)




							if type(t) == "string" then




								output = output.."\n"..tostring(r).. " = '"..tostring(t).."';"




							else




								output = output.."\n"..tostring(r).." = "..tostring(t)




							end




						end




					end




					wait()




					output = output.."\n}\n\n"




				end




			end




			newoutput = output




			output = ""




			if newoutput == oldoutput or newoutput == "" then




				return "-- Script was unable to be decompiled."




			else


	if scripptt:IsA("LocalScript") or scriptt:IsA("ModuleScript") then
					return newoutput
		else
		return "-- The script was unable to be decompiled due to it not being a LocalScript/ModuleScript"
		end

				return newoutput




			end



		else


			-- no


		end




	end




end


