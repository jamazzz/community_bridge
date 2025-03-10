if GetResourceState('es_extended') ~= 'started' then return end

ESX = exports["es_extended"]:getSharedObject()

Framework = {}

Framework.GetPlayerData = function()
    return ESX.PlayerData
end

Framework.GetPlayerMetaData = function(metadata)
    return ESX.GetPlayerData().metadata[metadata]
end

Framework.GetPlayerIdentifier = function()
    return ESX.GetPlayerData().identifier
end

Framework.GetPlayerName = function()
    local playerData = ESX.GetPlayerData()
    return playerData.firstName, playerData.lastName
end

Framework.GetPlayerJob = function()
    local playerData = ESX.GetPlayerData()
    return playerData.job.name, playerData.job.label, playerData.job.grade_label, playerData.job.grade
end

Framework.GetPlayerInventory = function()
    return ESX.GetPlayerData().inventory
end

Framework.GetIsPlayerDead = function()
    return ESX.GetPlayerData().dead
end

RegisterNetEvent('esx:playerLoaded', function(xPlayer)
    Wait(1500)
    FillBridgeTables()
	TriggerEvent('community_bridge:Client:OnPlayerLoaded')
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    ClearClientSideVariables()
	TriggerEvent('community_bridge:Client:OnPlayerUnload')
end)

RegisterNetEvent('esx:setJob', function(data)
    PlayerJobName = data.name
    PlayerJobLabel = data.label
    PlayerJobGradeName = data.grade_label
    PlayerJobGradeLevel = data.grade
    TriggerEvent('community_bridge:Client:OnPlayerJobUpdate',PlayerJobName, PlayerJobLabel, PlayerJobGradeName, PlayerJobGradeLevel)
end)
