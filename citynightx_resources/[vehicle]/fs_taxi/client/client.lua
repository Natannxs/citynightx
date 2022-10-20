--[[
            fs_taxi - Taxi service for FiveM Servers
              Copyright (C) 2018  FiveM-Scripts

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program in the file "LICENSE".  If not, see <http://www.gnu.org/licenses/>.
]]

local cancel = false
local intravel = false
--- vars
IsDestinationSet = false
parking = false

taxiBlip = nil
taxiVeh = nil
taxiPed = nil
PlayerEntersTaxi = false

z= nil

function DisplayHelpMsg(text)
	BeginTextCommandDisplayHelp("STRING")
	AddTextComponentScaleform(text)
	EndTextCommandDisplayHelp(0, false, 1, -1)
end

function DisplayNotify(title, text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	SetNotificationMessage("CHAR_TAXI", "CHAR_TAXI", true, 1, GetLabelText("CELL_E_248"), title, text);
	DrawNotification(true, false)
end

function notify(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, true)
end

function getGroundZ(x, y, z)
  local result, groundZ = GetGroundZFor_3dCoord(x+0.0, y+0.0, z+0.0, Citizen.ReturnResultAnyway())
  return groundZ
end

RegisterNetEvent("gcphone:taxicall")
AddEventHandler("gcphone:taxicall", function()
	local playerPed = PlayerPedId()

	if not intravel then
		if not IsPedInAnyVehicle(playerPed, false) or not IsPedInAnyTaxi(playerPed) then
			Px, Py, Pz = table.unpack(GetEntityCoords(playerPed))

			taxiVeh = CreateTaxi(Px, Py, Pz)
			while not DoesEntityExist(taxiVeh) do
				Wait(1)
			end

			taxiPed = CreateTaxiPed(taxiVeh)
			while not DoesEntityExist(taxiPed) do
				Wait(1)
			end

			TaskVehicleDriveToCoord(taxiPed, taxiVeh, Px, Py, Pz, 23.0, 0, GetEntityModel(taxiVeh), 283, 10.0)
			SetDriverAbility(taxiPed, 1.0)
			SetDriverAggressiveness(taxiPed, 0.7)
			SetDriveTaskDrivingStyle(taxiPed, 283)
			SetPedKeepTask(taxiPed, true)
			intravel = true
		end
	end
end)

--[[ RegisterCommand('taxi', function()
	local playerPed = PlayerPedId()

	if not DoesEntityExist(taxiVeh) then 
		if not IsPedInAnyVehicle(playerPed, false) or not IsPedInAnyTaxi(playerPed) then
			Px, Py, Pz = table.unpack(GetEntityCoords(playerPed))

			taxiVeh = CreateTaxi(Px, Py, Pz)
			while not DoesEntityExist(taxiVeh) do
				Wait(1)
			end

			taxiPed = CreateTaxiPed(taxiVeh)
			while not DoesEntityExist(taxiPed) do
				Wait(1)
			end

			TaskVehicleDriveToCoord(taxiPed, taxiVeh, Px, Py, Pz, 23.0, 0, GetEntityModel(taxiVeh), 283, 10.0)
			SetDriverAbility(taxiPed, 1.0)
			SetDriverAggressiveness(taxiPed, 0.7)
			SetDriveTaskDrivingStyle(taxiPed, 283)
			SetPedKeepTask(taxiPed, true)
			
		end
	end
end)
 ]]
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		player = PlayerId()
		playerPed = PlayerPedId()

		if DoesEntityExist(taxiVeh) and intravel then 
			Px, Py, Pz = table.unpack(GetEntityCoords(playerPed))
			vehX, vehY, vehZ = table.unpack(GetEntityCoords(taxiVeh))
			DistanceBetweenTaxi = GetDistanceBetweenCoords(Px, Py, Pz, vehX, vehY, vehZ, true)

			if IsVehicleStuckOnRoof(taxiVeh) or IsEntityUpsidedown(taxiVeh) or IsEntityDead(taxiVeh) or IsEntityDead(taxiPed) then
				DeleteVehicle(taxiVeh)
				DeletePed(taxiPed)
				intravel = false
				notify("Votre taxi a eu un contretemps appeler en un autre.")
			end

			if not DoesEntityExist(taxiPed) then
				DeleteVehicle(taxiVeh)
				intravel = false
				notify("Votre taxi a eu un contretemps appeler en un autre.")
			elseif DoesEntityExist(taxiPed) and not IsPedInVehicle(taxiPed, taxiVeh, false) then
				DeletePed(taxiPed)
				if DoesEntityExist(taxiVeh) then
					DeleteVehicle(taxiVeh)
				end
				intravel = false
				notify("Votre taxi a eu un contretemps appeler en un autre.")
			elseif DoesEntityExist(taxiVeh) and (not DoesEntityExist(taxiPed) or not IsPedInVehicle(taxiPed, taxiVeh, false)) then
				DeleteVehicle(taxiVeh)
				if DoesEntityExist(taxiPed) then
					DeletePed(taxiPed)
				end
				intravel = false
				notify("Votre taxi a eu un contretemps appeler en un autre.")
			end

			if DistanceBetweenTaxi <= 20.0 then
				if not IsPedInAnyVehicle(playerPed, false) then
					if IsControlJustPressed(0, 23) then
						TaskEnterVehicle(playerPed, taxiVeh, -1, 2, 1.0, 1, 0)
						PlayerEntersTaxi = true
						TaxiInfoTimer = GetGameTimer()
					end
				else
					if IsPedInVehicle(playerPed, taxiVeh, false) then
						local blip = GetBlipFromEntity(taxiVeh)
						if DoesBlipExist(blip) then
							RemoveBlip(blip)
						end

						if not DoesBlipExist(GetFirstBlipInfoId(8)) then
							if PlayerEntersTaxi then
								PlayAmbientSpeech1(taxiPed, "TAXID_WHERE_TO", "SPEECH_PARAMS_FORCE_NORMAL")
								PlayerEntersTaxi = false
							end

							if GetGameTimer() > TaxiInfoTimer + 1000 and GetGameTimer() < TaxiInfoTimer + 10000 then
								DisplayHelpMsg(i18n.translate("info_waypoint_message"))
							end
						elseif DoesBlipExist(GetFirstBlipInfoId(8)) then
							dx, dy, dz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, GetFirstBlipInfoId(8), Citizen.ResultAsVector()))
							z = getGroundZ(dx, dy, dz)

							if IsControlJustPressed(1, 51) then
								if not IsDestinationSet then
									disttom = CalculateTravelDistanceBetweenPoints(Px, Py, Pz, dx, dy, z)
									IsDestinationSet = true
								end

								PlayAmbientSpeech1(taxiPed, "TAXID_BEGIN_JOURNEY", "SPEECH_PARAMS_FORCE_NORMAL")
								TaskVehicleDriveToCoord(taxiPed, taxiVeh, dx, dy, z, 23.0, 0, GetEntityModel(taxiVeh), 283, 50.0)
								SetPedKeepTask(taxiPed, true)
							elseif IsControlJustPressed(1, 179) then
								if not IsDestinationSet then
									disttom = CalculateTravelDistanceBetweenPoints(Px, Py, Pz, dx, dy, z)
									IsDestinationSet = true
								end

								PlayAmbientSpeech1(taxiPed, "TAXID_SPEED_UP", "SPEECH_PARAMS_FORCE_NORMAL")
								TaskVehicleDriveToCoord(taxiPed, taxiVeh, dx, dy, z, 29.0, 0, GetEntityModel(taxiVeh), 318, 50.0)
								SetDriverAbility(taxiPed, 1.0)
								SetDriverAggressiveness(taxiPed, 0.7)
								SetDriveTaskDrivingStyle(taxiPed, 283)
								SetPedKeepTask(taxiPed, true)
							elseif distance3D(GetEntityCoords(playerPed, true), vector3(dx, dy, z)) <= 57.0 then
								if not parking then
									ClearPedTasks(taxiPed)
									PlayAmbientSpeech1(taxiPed, "TAXID_CLOSE_AS_POSS", "SPEECH_PARAMS_FORCE_NORMAL")
									TaskVehicleTempAction(taxiPed, taxiVeh, 6, 2000)
									SetVehicleHandbrake(taxiVeh, true)
									SetVehicleEngineOn(taxiVeh, false, true, false)
									SetPedKeepTask(taxiPed, true)
									TaskLeaveVehicle(playerPed, taxiVeh, 512)
									Wait(3000)
									parking = true
									TriggerEvent("gcphone:canceltaxi")
								end
							end
						end
					end
				end
			end
		else 
			Wait(500)
		end
	end
end)

function distance3D(coords1, coords2)
	return #(coords1 - coords2)
end

RegisterNetEvent("gcphone:canceltaxi")
AddEventHandler("gcphone:canceltaxi", function()
	if DoesEntityExist(taxiVeh) then
		TaskVehiclePark(taxiPed, taxiVeh, 901.59, -145.12, 76.61, 149.02, 1,1.0, false)
		SetDriveTaskDrivingStyle(taxiPed, 283)
		SetPedKeepTask(taxiPed,true)
		cancel = true
		intravel = false
		parking = false
		local blip = GetBlipFromEntity(taxiVeh)
		if DoesBlipExist(blip) then
			RemoveBlip(blip)
		end
		canceltaxi()
	else
		notify("Vous n'avez pas commandé de taxi")
	end
end)

function canceltaxi()
	local ltaxiVeh = taxiVeh
	local ltaxiPed = taxiPed
	while cancel do
		local distance = distance3D(GetEntityCoords(ltaxiVeh), vector3(901.59, -145.12, 76.61))
		Wait(1000)

		if not DoesEntityExist(ltaxiPed) then
			DeleteVehicle(ltaxiVeh)
			cancel = false
		elseif DoesEntityExist(ltaxiPed) and not IsPedInVehicle(ltaxiPed, ltaxiVeh, false) then
			DeletePed(ltaxiPed)
			if DoesEntityExist(ltaxiVeh) then
				DeleteVehicle(ltaxiVeh)
			end
			cancel = false
		elseif DoesEntityExist(ltaxiVeh) and (not DoesEntityExist(ltaxiPed) or not IsPedInVehicle(ltaxiPed, taxiVeh, false)) then
			DeleteVehicle(ltaxiVeh)
			if DoesEntityExist(taxiPed) then
				DeletePed(ltaxiPed)
			end
			cancel = false
		end

		if distance < 6.0 then
			DeleteVehicle(ltaxiVeh)
			DeletePed(ltaxiPed)
      cancel = false
    end
  end
end