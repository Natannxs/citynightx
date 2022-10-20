local webhookreport = "https://discordapp.com/api/webhooks/732855845297193031/oK5t-vQZ2hD2dJUGYjbT9pg6oYrkYUcRLasYArEMiDw6kl05m1IwRa8QUu_oe4bhe6OR"

RegisterServerEvent("addReportMenuS")
AddEventHandler("addReportMenuS",function(message)
  local date = os.date("%d/%m/%y %X")
  TriggerClientEvent("addReportMenu", -1, source, GetPlayerName(source), message, date)
end)

RegisterServerEvent("sendMessageReport")
AddEventHandler("sendMessageReport",function(id, msg)
  TriggerClientEvent("RageUI:Popup", id,{message = "~r~Staff : ~s~"..msg})
end)

RegisterServerEvent("closeReportS")
AddEventHandler("closeReportS",function(index)
  TriggerClientEvent("RageUI:Popup", source,{message = "~b~Report numéro #"..index.." clôturé."})
  TriggerClientEvent("closeReport", -1, index)
  TriggerEvent("Citynight:sendToDiscordFromServer", source, webhookreport, GetPlayerName(source).." a clôturé le ticket n°"..index)
end)

RegisterServerEvent("takeReportS")
AddEventHandler("takeReportS",function(index, id, name, msg, date, status)
  local who = GetPlayerName(source)
  TriggerClientEvent("takeReport", -1, index, id, name, msg, date, who, status)
  if status == "true" then pris = " a pris en charge le ticket n°" else pris = " ne prend plus en charge le ticket n°" end
  TriggerEvent("Citynight:sendToDiscordFromServer", source, webhookreport, GetPlayerName(source)..pris..index.." de "..name)
end)