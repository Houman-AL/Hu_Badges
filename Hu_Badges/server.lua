
--[[Made By Houman]]
                --[[ Houman ]]                 
--[[Made By Houman]]
--[[Made By Houman]]--[[Made By Houman]]
ESX                = nil
--[[Made By Houman]]--[[Made By Houman]]
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--[[Made By Houman]]--[[Made By Houman]]
--[[------------- Houman -------------]]
--[[Made By Houman]]--[[Made By Houman]]
local toggle_Blip = false RegisterCommand(Config.ToggleBadgeJobsCommand, function(source, args, rawCommand)--[[Made By Houman]]
local xPlayer = ESX.GetPlayerFromId(source) toggle_Blip = not toggle_Blip--[[Made By Houman]]
if toggle_Blip then local job_is_white =	false local job = 'not loaded' local name = 'not loaded' local color = {0, 0, 0} for k,v in pairs(Config.BageJobs) do if xPlayer.job.name == v.job then--[[Made By Houman]]
job = tostring(xPlayer.job.name) color = {v.color.r, v.color.g, v.color.b} job_is_white = true break end end if job_is_white then--[[Made By Houman]]
local fined_job = false for ka,va in pairs(Config.grades_info) do if va.job == job then for k,v in pairs(va.grades) do--[[Made By Houman]]
if tonumber(k) == tonumber(xPlayer.job.grade) then if va.grades[k].name ~= nil then fined_job = true name = v.name--[[Made By Houman]]
end if va.grades[k].color ~= nil then color = {va.grades[k].color.r, va.grades[k].color.g, va.grades[k].color.b} end break end end--[[Made By Houman]]
break end end if not fined_job then name = tostring(xPlayer.job.grade_label)--[[Made By Houman]]
end TriggerClientEvent("Hu_Badges:ADD", -1, source, job, name, color) end else TriggerClientEvent("Hu_Badges:Remove", -1, source) end end)--[[Made By Houman]]
--[[Made By Houman]]
--[[------------- Houman -------------]]

--[[Made By Houman]]
                --[[ Houman ]]                 
--[[Made By Houman]]
