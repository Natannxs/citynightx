local ind = {l = false, r = false}
local display = true

Citizen.CreateThread(
    function()
        while true do
            local Ped = PlayerPedId()
            if (IsPedInAnyVehicle(Ped)) and display then
                local PedCar = GetVehiclePedIsIn(Ped, false)
                if PedCar and GetPedInVehicleSeat(PedCar, -1) == Ped then
                    -- Speed
                    carSpeed = math.ceil(GetEntitySpeed(PedCar) * 3.6)
                    SendNUIMessage(
                        {
                            showhud = true,
                            speed = carSpeed
                        }
                    )

                    -- Lights
                    _, feuPosition, feuRoute = GetVehicleLightsState(PedCar)
                    if (feuPosition == 1 and feuRoute == 0) then
                        SendNUIMessage(
                            {
                                feuPosition = true
                            }
                        )
                    else
                        SendNUIMessage(
                            {
                                feuPosition = false
                            }
                        )
                    end
                    if (feuPosition == 1 and feuRoute == 1) then
                        SendNUIMessage(
                            {
                                feuRoute = true
                            }
                        )
                    else
                        SendNUIMessage(
                            {
                                feuRoute = false
                            }
                        )
                    end

                    -- Turn signal
                    -- SetVehicleIndicatorLights (1 left -- 0 right)
                    local VehIndicatorLight = GetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()))
                    if IsControlJustPressed(1, 84) then
                        ind.l = not ind.l
                        SetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()), 1, ind.l)
                        if ind.l == false then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        else
                            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        end
                    elseif IsControlJustPressed(1, 83) then
                        ind.r = not ind.r
                        SetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()), 0, ind.r)
                        if ind.r == false then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        else
                            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        end
                    elseif IsControlJustPressed(1, 202) then
                        ind.rl = not ind.rl
                        SetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()), 1, ind.rl)
                        SetVehicleIndicatorLights(GetVehiclePedIsUsing(PlayerPedId()), 0, ind.rl)
                        if ind.rl == false then
                            PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        else
                            PlaySoundFrontend(-1, "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
                        end
                    end

                    if (VehIndicatorLight == 0) then
                        SendNUIMessage(
                            {
                                clignotantGauche = false,
                                clignotantDroite = false
                            }
                        )
                    elseif (VehIndicatorLight == 1) then
                        SendNUIMessage(
                            {
                                clignotantGauche = true,
                                clignotantDroite = false
                            }
                        )
                    elseif (VehIndicatorLight == 2) then
                        SendNUIMessage(
                            {
                                clignotantGauche = false,
                                clignotantDroite = true
                            }
                        )
                    elseif (VehIndicatorLight == 3) then
                        SendNUIMessage(
                            {
                                clignotantGauche = true,
                                clignotantDroite = true
                            }
                        )
                    end
                else
                    SendNUIMessage(
                        {
                            showhud = false
                        }
                    )
                end
            else
                SendNUIMessage(
                    {
                        showhud = false
                    }
                )
            end

            Citizen.Wait(1)
        end
    end
)

-- Consume fuel factor
Citizen.CreateThread(
    function()
        while true do
            local Ped = PlayerPedId()
            if (IsPedInAnyVehicle(Ped)) then
                local PedCar = GetVehiclePedIsIn(Ped, false)
                if PedCar and GetPedInVehicleSeat(PedCar, -1) == Ped then
                    carSpeed = math.ceil(GetEntitySpeed(PedCar) * 3.6)
                    fuel = GetVehicleFuelLevel(PedCar)

                    SendNUIMessage(
                        {
                            showfuel = true,
                            fuel = fuel
                        }
                    )
                end
            end

            Citizen.Wait(1)
        end
    end
)

RegisterNetEvent("speedo:display")
AddEventHandler(
    "speedo:display",
    function(visible)
        display = visible
    end
)
