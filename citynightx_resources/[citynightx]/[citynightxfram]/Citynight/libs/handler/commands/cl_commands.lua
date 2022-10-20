RegisterNetEvent("core:teleport")
AddEventHandler(
    "core:teleport",
    function(pos)
        pos.x = pos.x + 0.0
        pos.y = pos.y + 0.0
        pos.z = pos.z + 0.0

        RequestCollisionAtCoord(pos.x, pos.y, pos.z)

        while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
            RequestCollisionAtCoord(pos.x, pos.y, pos.z)
            Citizen.Wait(1)
        end

        SetEntityCoords(PlayerPedId(), pos.x, pos.y, pos.z)
    end
)

local commands = {
    {
        text = "giveitem",
        fct = function(args)
            if tonumber(args[3]) == nil then
                return ShowNotification("~r~Nombre invalide")
            end
            for i = 1, args[3], 1 do
                item = {name = args[2]}
                TriggerPlayerEvent("inventory:AddItem2", args[1], item)
            end
        end
    },
    {
        text = "setjob",
        fct = function(args)
            TriggerServerEvent("job:UpdateJob2", args[2], args[3], args[1])
            TriggerPlayerEvent("Jobs:SetJob2", args[1], args[2], args[3])
        end
    },
    {
        text = "setorga",
        fct = function(args)
            TriggerServerEvent("job:UpdateJob4", args[2], args[3], args[1])
            TriggerPlayerEvent("Orga:SetJob2", CurrentPlayer.serverId, NomJob, Grade)
        end
    },
    {
        text = "car",
        fct = function(args)
            local ModelName = args[1]

            if ModelName and IsModelValid(ModelName) and IsModelAVehicle(ModelName) then
                RequestModel(ModelName)
                while not HasModelLoaded(ModelName) do
                    Citizen.Wait(0)
                end
                local veh =
                    CreateVehicle(
                    GetHashKey(ModelName),
                    GetEntityCoords(PlayerPedId()),
                    GetEntityHeading(PlayerPedId()),
                    true,
                    true
                )
                TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                Wait(50)
            else
                ShowNotification("~r~Erreur !")
            end
        end
    },
    {
        text = "tp",
        fct = function(args)
            for i = 1, #args, 1 do
                args[i] = tonumber(args[i])
            end
            print(args[1], args[2], args[3])
            TriggerEvent("core:teleport", {x = args[1], y = args[2], z = args[3]})
        end
    },
    {
        text = "dv",
        fct = function(args)
            if IsPedInAnyVehicle(LocalPlayer().Ped) then
                DeleteEntity(GetVehiclePedIsIn(LocalPlayer().Ped))
            else
                if ClosestVeh() ~= 0 then
                    DeleteEntity(ClosestVeh())
                end
            end
        end
    },
    {
        text = "startCooperScenario",
        fct = function(args)
            TriggerEvent("startCooperScenario")
        end
    },
    {
        text = "stopCooperScenario",
        fct = function(args)
            TriggerEvent("stopCooperScenario")
        end
    },
    {
        text = "revive",
        fct = function(args)
            TriggerPlayerEvent("player:Revive", args[1])
        end
    },
    {
        text = "heal",
        fct = function(args)
            TriggerPlayerEvent("player:Heal", args[1])
        end
    }
}

Citizen.CreateThread(
    function()
        Wait(1)
        while Job:Get() == nil do
            Wait(1)
        end
        for i = 1, #commands, 1 do
            if PlyGroup == "superadmin" then
                RegisterCommand(
                    commands[i].text,
                    function(_, args)
                        commands[i].fct(args)
                    end
                )
            end
        end
    end
)

RegisterCommand(
    "report",
    function(_, args)
        TriggerServerEvent(
            "Citynight:sendToDiscord",
            "https://discordapp.com/api/webhooks/732855845297193031/oK5t-vQZ2hD2dJUGYjbT9pg6oYrkYUcRLasYArEMiDw6kl05m1IwRa8QUu_oe4bhe6OR",
            table.concat(args, " ")
        )
        TriggerServerEvent('addReportMenuS', table.concat(args, " "))
        TriggerEvent(
            "RageUI:Popup",
            {
                message = "(~r~REPORT~w~)\nVotre message a bien été envoyé aux modérateurs."
            }
        )
    end
)
