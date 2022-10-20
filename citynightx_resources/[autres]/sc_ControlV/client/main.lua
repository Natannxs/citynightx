ESX          = nil
local GUI    = {}
GUI.Time     = 0

----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------- CONTROLE PUISSANCE VEHICULE POLICE -----------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------by FullChrome#7712--------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------- Pour déactivé l'écriture vert tu à juste à enlevez les --[[ et --]]  --------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------- 

--- POLICE 2
 
Citizen.CreateThread(function()
  while true do
   Citizen.Wait(0)
   if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("police2")) then
      SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 7.0)
      SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.5)
    end
  end
end)


--- Police 1
Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("police")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 5.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.5)
     end
   end
 end)


--- Police 3

 Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("police3")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 6.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)


--- Police 3
--[[ 
 Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("police3")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]] 

--- Police 4
--[[ 
 Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("police4")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]] 

--- Police b
--[[ 
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("policeb")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]]

--- Police t
--[[ 
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("policet")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]]
 
--- Sheriff
--[[ 
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("sheriff")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]]

--- Sheriff 2
--[[ 
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("sheriff2")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]]

--- Ambulance
--[[
 Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("ambulance")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end) 
--]] 


--- faggio 
--[[
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("faggio")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]]

--- faggio 2 
--[[
  Citizen.CreateThread(function()
   while true do
    Citizen.Wait(0)
    if IsVehicleModel(GetVehiclePedIsIn(GetPlayerPed(-1), true), GetHashKey("faggio2")) then
       SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
       SetVehicleEngineTorqueMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), true), 1.0)
     end
   end
 end)
--]] 


----------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------by FullChrome#7712--------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------

										   
											   
											   
											   
											   