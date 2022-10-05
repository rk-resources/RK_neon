
neon = false
local onNui = false

RegisterCommand("neon", function()
    onNui = not onNui
    if onNui then
        SetNuiFocus(true, true)
        SendNUIMessage( {teste = true })
    else
        SetNuiFocus(false)
        SendNUIMessage({
            teste = false
        })
    end
end)

lados = {0,1,2,3}
RegisterNUICallback("power", function(data)
    neon = not neon
    local playerIdx = GetPlayerFromServerId(source)
    local ped = GetPlayerPed(playerIdx)
    vehicle = GetVehiclePedIsIn(ped,false)
    for k,v in ipairs(lados) do
        SetVehicleNeonLightEnabled(vehicle, v, neon)
    end  
end)



RegisterNUICallback("front", function(data)
    print(true)
    neon = not neon
    local playerIdx = GetPlayerFromServerId(source)
    local ped = GetPlayerPed(playerIdx)
    vehicle = GetVehiclePedIsIn(ped,false)
    SetVehicleNeonLightEnabled(vehicle,2,neon)
    
end)

RegisterNUICallback("back", function(data)
    print(true)
    neon = not neon
    local playerIdx = GetPlayerFromServerId(source)
    local ped = GetPlayerPed(playerIdx)
    vehicle = GetVehiclePedIsIn(ped,false)
    SetVehicleNeonLightEnabled(vehicle,3,neon)
    
end)

RegisterNUICallback("left", function(data)
    print(true)
    neon = not neon
    local playerIdx = GetPlayerFromServerId(source)
    local ped = GetPlayerPed(playerIdx)
    vehicle = GetVehiclePedIsIn(ped,false)
    SetVehicleNeonLightEnabled(vehicle,1,neon)
    
end)

RegisterNUICallback("right", function(data)
    print(true)
    neon = not neon
    local playerIdx = GetPlayerFromServerId(source)
    local ped = GetPlayerPed(playerIdx)
    vehicle = GetVehiclePedIsIn(ped,false)
    SetVehicleNeonLightEnabled(vehicle,0,neon)
    
end)

RegisterNUICallback("blue", function(data) 
    SetVehicleNeonLightsColour(vehicle, 4, 4, 171)
end)
RegisterNUICallback("red", function(data) 
    SetVehicleNeonLightsColour(vehicle, 222, 11, 11)
end)
RegisterNUICallback("pink", function(data) 
    SetVehicleNeonLightsColour(vehicle, 239, 16, 209)
end)
RegisterNUICallback("white", function(data) 
    SetVehicleNeonLightsColour(vehicle, 254, 254, 254)
end)
RegisterNUICallback("green", function(data) 
    SetVehicleNeonLightsColour(vehicle, 47, 238, 9)
end)
RegisterNUICallback("yelow", function(data) 
    SetVehicleNeonLightsColour(vehicle, 248, 212, 7)
end)
RegisterNUICallback("purple", function(data) 
    SetVehicleNeonLightsColour(vehicle, 73, 14, 234)
end)
RegisterNUICallback("aqua", function(data) 
    SetVehicleNeonLightsColour(vehicle, 10, 243, 227)
end)
RegisterNUICallback("orange", function(data) 
    SetVehicleNeonLightsColour(vehicle, 248, 111, 7)
end)




