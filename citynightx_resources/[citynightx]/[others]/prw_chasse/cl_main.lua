---------
---------
--Parow--
---------
---------
local depecWeps = {-1716189206, 2227010557, 2460120199, 4191993645, 3756226112, 3441901897}
local allowedPeds = {
    ["-664053099"] = 4, -- biche F
    ["1682622302"] = 2, -- coyotte
    ["-541762431"] = 1, -- lapin
    ["307287994"] = 3, -- mountain lion
    ["-745300483"] = 1, -- oiseau
    ["1457690978"] = 1, -- oiseau 2
    ["402729631"] = 1 -- oiseau 3
}
local huntedPeds = {}
local Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

Citizen.CreateThread(
    function()
        while true do
            Wait(1)
            local ped = PlayerPedId()
            if IsControlJustPressed(1, Keys["K"]) and IsPedWeaponReadyToShoot(ped) then
                local plyPos = GetEntityCoords(ped)
                if not tableHasValue(depecWeps, tonumber(GetSelectedPedWeapon(ped))) then
                    print("called")
                else
                    local ent = GetClosestPed(plyPos, 3.0)
                    if
                        ent and DoesEntityExist(ent) and IsEntityDead(ent) and not tableHasValue(huntedPeds, ent) and
                            not allowedPeds[mdl]
                     then
                        doAnim({"missexile3", "ex03_dingy_search_case_a_michael"})
                        local mdl = ent and tostring(GetEntityModel(ent))
                        Citizen.Wait(4000)
                        if not allowedPeds[mdl] then
                            exports["Citynight"]:ShowNotification("~r~Cette viande n'a aucune valeur.")
                        else
                            --addItem("Viande crue", allowedPeds[mdl] )
                            local item = {name = "meat", data = {quality = math.random(25, 99)}}

                            exports["Citynight"]:ShowNotification(
                                "Vous avez récupéré ~b~" .. allowedPeds[mdl] .. "~w~ de ~g~viande(s) crue(s)~w~."
                            )
                            table.insert(huntedPeds, ent)
                            SetEntityAsNoLongerNeeded(ent)
                            for i = 1, allowedPeds[mdl], 1 do
                                exports["Citynight"]:AddItemtoInv(item)
                            end
                        end
                    end
                end
            end
        end
    end
)

---FCT
function tableHasValue(tbl, value, k)
    if not tbl or not value or type(tbl) ~= "table" then
        return
    end
    for _, v in pairs(tbl) do
        if k and v[k] == value or v == value then
            return true, _
        end
    end
end

function GetClosestPed(vector, radius, modelHash, testFunction)
    if not vector or not radius then
        return
    end
    local handle, myped, veh = FindFirstPed(), PlayerPedId()
    local success, theVeh
    repeat
        success, veh = FindNextPed(handle)
        local firstDist = GetDistanceBetweenCoords(GetEntityCoords(veh), vector.x, vector.y, vector.z)
        if
            firstDist < radius and veh ~= myped and (not modelHash or modelHash == GetEntityModel(veh)) and
                (not theVeh or firstDist < GetDistanceBetweenCoords(GetEntityCoords(theVeh), GetEntityCoords(veh))) and
                (not testFunction or testFunction(veh))
         then
            theVeh = veh
        end
    until not success
    EndFindPed(handle)

    return theVeh
end

function forceAnim(animName, flag, args)
    flag, args = flag and tonumber(flag) or false, args or {}
    local ped, time, clearTasks, animPos, animRot, animTime =
        args.ped or PlayerPedId(),
        args.time,
        args.clearTasks,
        args.pos,
        args.ang

    if IsPedInAnyVehicle(ped) and (not flag or flag < 40) then
        return
    end

    if not clearTasks then
        ClearPedTasks(ped)
    end

    if not animName[2] and femaleFix[animName[1]] and GetEntityModel(ped) == -1667301416 then
        animName = femaleFix[animName[1]]
    end

    if animName[2] and not HasAnimDictLoaded(animName[1]) then
        if not DoesAnimDictExist(animName[1]) then
            return
        end
        RequestAnimDict(animName[1])
        while not HasAnimDictLoaded(animName[1]) do
            Citizen.Wait(10)
        end
    end

    if not animName[2] then
        ClearAreaOfObjects(GetEntityCoords(ped), 1.0)
        TaskStartScenarioInPlace(ped, animName[1], -1, not tableHasValue(animBug, animName[1]))
    else
        if not animPos then
            TaskPlayAnim(ped, animName[1], animName[2], 8.0, -8.0, -1, flag or 44, 0, 0, 0, 0, 0)
        else
            TaskPlayAnimAdvanced(
                ped,
                animName[1],
                animName[2],
                animPos.x,
                animPos.y,
                animPos.z,
                animRot.x,
                animRot.y,
                animRot.z,
                8.0,
                -8.0,
                -1,
                flag or 44,
                animTime or -1,
                0,
                0
            )
        end
    end

    if time and type(time) == "number" then
        Citizen.Wait(time)
        ClearPedTasks(ped)
    end

    if not args.dict then
        RemoveAnimDict(animName[1])
    end
end

function doAnim(animName, time, flag, ped, customPos)
    if type(animName) ~= "table" then
        animName = {animName}
    end
    ped, flag = ped or PlayerPedId(), flag and tonumber(flag) or false
    if not animName or not animName[1] or string.len(animName[1]) < 1 then
        return
    end
    Citizen.CreateThread(
        function()
            forceAnim(animName, flag, {ped = ped, time = time, pos = customPos})
        end
    )
end
