
--[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]
                --[[ Houman ]]                 
--[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]
--[[My Discord For Help Houman#7172]]--[[My Discord For Help Houman#7172]]
ESX                = nil
--[[My Discord For Help Houman#7172]]--[[My Discord For Help Houman#7172]]
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--[[My Discord For Help Houman#7172]]--[[My Discord For Help Houman#7172]]
--[[------------- Houman -------------]]
--[[My Discord For Help Houman#7172]]--[[My Discord For Help Houman#7172]]
local toggle_Blip = false RegisterCommand(Config.ToggleBadgeJobsCommand, function(source, args, rawCommand)--[[My Discord For Help Houman#7172]]
local xPlayer = ESX.GetPlayerFromId(source) toggle_Blip = not toggle_Blip--[[My Discord For Help Houman#7172]]
if toggle_Blip then local job_is_white =	false local job = 'not loaded' local name = 'not loaded' local color = {0, 0, 0} for k,v in pairs(Config.BageJobs) do if xPlayer.job.name == v.job then--[[My Discord For Help Houman#7172]]
job = tostring(xPlayer.job.name) color = {v.color.r, v.color.g, v.color.b} job_is_white = true break end end if job_is_white then--[[My Discord For Help Houman#7172]]
local fined_job = false for ka,va in pairs(Config.grades_info) do if va.job == job then for k,v in pairs(va.grades) do--[[My Discord For Help Houman#7172]]
if tonumber(k) == tonumber(xPlayer.job.grade) then if va.grades[k].name ~= nil then fined_job = true name = v.name--[[My Discord For Help Houman#7172]]
end if va.grades[k].color ~= nil then color = {va.grades[k].color.r, va.grades[k].color.g, va.grades[k].color.b} end break end end--[[My Discord For Help Houman#7172]]
break end end if not fined_job then name = tostring(xPlayer.job.grade_label)--[[My Discord For Help Houman#7172]]
end TriggerClientEvent("Hu_Badges:ADD", -1, source, job, name, color) end else TriggerClientEvent("Hu_Badges:Remove", -1, source) end end)--[[My Discord For Help Houman#7172]]
--[[My Discord For Help Houman#7172]]
--[[------------- Houman -------------]]

--[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]
                --[[ Houman ]]                 
--[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]
