RegisterServerEvent("Citynight:sendToDiscord")
AddEventHandler(
    "Citynight:sendToDiscord",
    function(webhook, message)
        local embeds = {
            {
                ["title"] = source .. " | " .. GetPlayerName(source),
                ["type"] = "rich",
                ["color"] = 15147288,
                ["footer"] = {
                    ["text"] = message
                }
            }
        }

        PerformHttpRequest(
            webhook,
            function(err, text, headers)
            end,
            "POST",
            json.encode({username = "Citynight Logs", embeds = embeds}),
            {["Content-Type"] = "application/json"}
        )
    end
)

RegisterServerEvent("Citynight:sendToDiscordFromServer")
AddEventHandler(
    "Citynight:sendToDiscordFromServer",
    function(source, webhook, message)
        print("SENDING TO DISCORD")

        local embeds = {
            {
                ["title"] = source .. " | " .. GetPlayerName(source),
                ["type"] = "rich",
                ["color"] = 15147288,
                ["footer"] = {
                    ["text"] = message
                }
            }
        }

        PerformHttpRequest(
            webhook,
            function(err, text, headers)
            end,
            "POST",
            json.encode({username = "Citynight Logs", embeds = embeds}),
            {["Content-Type"] = "application/json"}
        )
    end
)
