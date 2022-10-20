TriggerEvent(
  "es:addCommand",
  "report",
  function(source, args, user)
    TriggerClientEvent(
      "RageUI:Popup",
      source,
      {
        message = "(~r~REPORT~w~) Votre message a bien été envoyé"
      }
    )

    steamID = GetPlayerIdentifiers(source)[1]

    local embeds = {
      {
        ["title"] = source .. " | " .. GetPlayerName(source),
        ["type"] = "rich",
        ["color"] = 16711680,
        ["footer"] = {
          ["text"] = table.concat(args, " ")
        }
      }
    }

    PerformHttpRequest(
      "https://discord.com/api/webhooks/788546793499656253/XBUFzmA1D9n2H2eFPwLOf7H4e9zV8VIIf0KxEAowrD1CpfxQi2mhhuMp3mVSYcXlY9yS",
      function(err, text, headers)
      end,
      "POST",
      json.encode({username = "Citynight Report", embeds = embeds}),
      {["Content-Type"] = "application/json"}
    )

  end,
  {help = "Report a player or an issue", params = {{name = "report", help = "What you want to report"}}}
)
