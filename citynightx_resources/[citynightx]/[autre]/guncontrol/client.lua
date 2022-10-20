-- Start Gun Control

local skinbag = nil
local WeaponfromTrunk = nil
local color = {r = 37, g = 175, b = 57, alpha = 255} -- Color of the text
local font = 0 -- Font of the text
local time = 7000 -- Duration of the display of the text : 1000ms = 1sec
local nbrDisplaying = 0
local tookWeapon = false
local LoadedIn = false
local timeout = false
local HasBag = false

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(100)
            skinbag = exports["Citynight"]:GetBags()
        end
    end
)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(18000)
            if not LoadedIn then
                LoadedIn = true
            end
        end
    end
)

local function timeOut()
    SetTimeout(
        4100,
        function()
            timeout = false
        end
    )
end

-- No gun without trunk
Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(10)
            local playerPed = PlayerPedId()
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), true))
            local closecar = GetClosestVehicle(x, y, z, 4.0, 0, 71)

            if GetSelectedPedWeapon(playerPed) ~= nil then
                if
                    skinbag == 40 or skinbag == 41 or skinbag == 44 or skinbag == 45 or skinbag == 52 or
                        closecar ~= 0 and VehicleInFront() > 0
                 then
                    if skinbag == 40 or skinbag == 41 or skinbag == 44 or skinbag == 45 or skinbag == 52 then
                        where = "bag"
                        HasBag = true
                    else
                        where = "trunk"
                    end
                    for i = 1, #Config.StashWeapons, 1 do
                        local weaponHash = GetHashKey(Config.StashWeapons[i].name)
                        local weaponName = Config.StashWeapons[i].label
                        if
                            weaponHash == GetSelectedPedWeapon(playerPed) and not tookWeapon and
                                GetSelectedPedWeapon(playerPed) ~= WeaponfromTrunk
                         then
                            tookWeapon = true
                            text = "*Prend " .. weaponName .. " du " .. where .. "*"
                            if not timeout then
                                timeout = true
                                timeOut()
                            --TriggerServerEvent('3dmesg:shareDisplay', text)
                            end
                            WeaponfromTrunk = GetSelectedPedWeapon(playerPed)
                        end
                    end
                else
                    for i = 1, #Config.StashWeapons, 1 do
                        local weaponHash = GetHashKey(Config.StashWeapons[i].name)
                        if weaponHash == GetSelectedPedWeapon(playerPed) and WeaponfromTrunk ~= weaponHash then
                            SetCurrentPedWeapon(PlayerPedId(), -1569615261, true)
                            tookWeapon = false
                            TriggerEvent("RageUI:Popup", {message = "Vous ne pouvez pas sortir une arme de vos fesses"})
                        end
                    end
                end
            end

            if GetSelectedPedWeapon(playerPed) ~= WeaponfromTrunk then
                WeaponfromTrunk = nil
                tookWeapon = false
            end
            currentWeapon = GetSelectedPedWeapon(playerPed)
            if
                currentWeapon ~= -1569615261 and currentWeapon ~= 883325847 and currentWeapon ~= 966099553 and
                    not IsPedInAnyVehicle(playerPed, 1) and
                    LoadedIn
             then
                if not tookWeapon or WeaponfromTrunk ~= GetSelectedPedWeapon(playerPed) then
                    print(GetSelectedPedWeapon(playerPed))
                    text = "*Prendre arme* "
                    if not timeout then
                        timeout = true
                        timeOut()
                    --TriggerServerEvent('3dmesg:shareDisplay', text)
                    end
                    tookWeapon = true
                    WeaponfromTrunk = GetSelectedPedWeapon(playerPed)
                end
            end
        end
    end
)

function VehicleInFront()
    local pos = GetEntityCoords(PlayerPedId())
    local entityWorld = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 4.0, 0.0)
    local rayHandle =
        CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, PlayerPedId(), 0)
    local a, b, c, d, result = GetRaycastResult(rayHandle)
    return result
end

RegisterNetEvent("3dmesg:triggerDisplay")
AddEventHandler(
    "3dmesg:triggerDisplay",
    function(text, source)
        local offset = 1 + (nbrDisplaying * 0.14)
        Display(GetPlayerFromServerId(source), text, offset)
    end
)

function Display(mePlayer, text, offset)
    local displaying = true
    Citizen.CreateThread(
        function()
            Wait(time)
            displaying = false
        end
    )
    Citizen.CreateThread(
        function()
            nbrDisplaying = nbrDisplaying + 1
            while displaying do
                Wait(0)
                local coords = GetEntityCoords(GetPlayerPed(mePlayer), false)
                DrawText3D(coords["x"], coords["y"], coords["z"] + offset, text)
            end
            nbrDisplaying = nbrDisplaying - 1
        end
    )
end

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    local scale = (1 / dist) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)
    end
end

-- End Gun control

RegisterNetEvent("esx-kr-bag:CheckBag")
AddEventHandler(
    "esx-kr-bag:CheckBag",
    function()
        if HasBag then
            return true
        else
            return false
        end
    end
)

RegisterNetEvent("esx-kr-bag:SetOntoPlayer")
AddEventHandler(
    "esx-kr-bag:SetOntoPlayer",
    function(id)
        ESX.TriggerServerCallback(
            "esx_skin:getPlayerSkin",
            function(skin, jobSkin)
                --if HasBag then
                --if skinbag == 40 or skinbag == 41 or skinbag == 44 or skinbag == 45 then
                TriggerEvent("skinchanger:change", "bags_1", 45)
                TriggerEvent("skinchanger:change", "bags_2", 0)
                TriggerEvent(
                    "skinchanger:getSkin",
                    function(skin)
                        TriggerServerEvent("esx_skin:save", skin)
                    end
                )
                --end
            end
        )
    end
)
