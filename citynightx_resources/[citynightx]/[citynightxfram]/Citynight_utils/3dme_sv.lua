local function TableToString(tab)
    local str = ""
    for i = 1, #tab do
        str = str .. " " .. tab[i]
    end
    return str
end

RegisterServerEvent("sendMe")
AddEventHandler(
    "sendMe",
    function(text)
        local player = source
        local ped = GetPlayerPed(player)
        local playerCoords = GetEntityCoords(ped)

        TriggerClientEvent("3dme:shareDisplay", -1, text, source, GetPlayerPed(source), playerCoords)
    end
)
