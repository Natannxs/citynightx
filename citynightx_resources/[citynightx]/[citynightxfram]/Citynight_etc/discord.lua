Citizen.CreateThread(
    function()
        while true do
            SetDiscordAppId(782642482265194528)
            SetDiscordRichPresenceAsset("citynight")
            SetDiscordRichPresenceAssetText("https://discord.gg/kndqRGG")

            exports["Citynight"]:TriggerServerCallback(
                "onlinePlayers:list",
                function(users)
                    SetRichPresence(GetPlayerName(PlayerId()) .. " 👥 " .. #users .. "/128")
                end
            )

            Citizen.Wait(60000)
        end
    end
)
