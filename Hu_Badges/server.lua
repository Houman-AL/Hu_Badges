--[[Houman#7172]] --[[Houman#7172]] --[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]--[[Houman#7172]] --[[Houman#7172]] --[[ Houman ]] --[[Houman#7172]] --[[Houman#7172]] --[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] ESX = nil--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[------------- Houman -------------]]--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local toggle_Blip = false--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] RegisterCommand(Config.ToggleBadgeJobsCommand, function(source, args, rawCommand)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local xPlayer = ESX.GetPlayerFromId(source)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] toggle_Blip = not toggle_Blip--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] if toggle_Blip then--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local job_is_white =--[[Houman#7172]] false--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local job = 'not loaded'--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local name = 'not loaded'--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] local color = {0, 0, 0}--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] for k,v in pairs(Config.BageJobs) do--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] if xPlayer.job.name == v.job then--[[Houman#7172]] --[[Houman#7172]] job = tostring(xPlayer.job.name)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] color = {v.color.r, v.color.g, v.color.b}--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] job_is_white = true--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] break--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] if job_is_white then--[[Houman#7172]] --[[Houman#7172]] local fined_job = false--[[Houman#7172]] --[[Houman#7172]] for ka,va in pairs(Config.grades_info) do--[[Houman#7172]] --[[Houman#7172]] if va.job == job then--[[Houman#7172]] --[[Houman#7172]] for k,v in pairs(va.grades) do--[[Houman#7172]] --[[Houman#7172]] if tonumber(k) == tonumber(xPlayer.job.grade) then--[[Houman#7172]] --[[Houman#7172]] if va.grades[k].name ~= nil then--[[Houman#7172]] --[[Houman#7172]] fined_job = true--[[Houman#7172]] --[[Houman#7172]] name = v.name--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] if va.grades[k].color ~= nil then--[[Houman#7172]] --[[Houman#7172]] color = {va.grades[k].color.r, va.grades[k].color.g, va.grades[k].color.b}--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] break--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] break--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] if not fined_job then--[[Houman#7172]] --[[Houman#7172]] name = tostring(xPlayer.job.grade_label)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] TriggerClientEvent("Hu_Badges:ADD", -1, source, job, name, color)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] else--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] TriggerClientEvent("Hu_Badges:Remove", -1, source)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] end)--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[------------- Houman -------------]]--[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Houman#7172]] --[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]--[[Houman#7172]] --[[Houman#7172]] --[[ Houman ]] --[[Houman#7172]] --[[Houman#7172]] --[[Hu_Leak : https://discord.gg/2AQCXpbv95 ]]--[[Houman#7172]] --[[Houman#7172]] 