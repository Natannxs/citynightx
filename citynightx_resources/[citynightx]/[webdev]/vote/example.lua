-- Ceci est un exemple basique permettant un affiche des détails du vote en console
-- C'est seulement une demo, à vous de modifier à votre convenance.
local function getPlayerByName(playername)
    for i = 1 , #GetPlayers() , 1 do
        if GetPlayerName(GetPlayers()[i]) == playername then
            return GetPlayers()[i]
        end
    end
end

AddEventHandler('onPlayerVote', function (playername, ip, date)
    print(ip,playername)
    PerformHttpRequest("http://api.ipstack.com/".. ip .."?access_key=cc668d1dbbce748e098c3d158ac4a551", function (errorCode, resultData, resultHeaders)
        resultData = json.decode(resultData)
        local autorized = true
        for i = 1 , #Config.AutorizedCountry, 1 do
            if Config.AutorizedCountry[i] == resultData.country_code then
                autorized = true
            end
        end

        if autorized then
            local srcPly = getPlayerByName(playername)
            print(srcPly)
            TriggerClientEvent("inventory:AddItem2", srcPly, {name="Ticket"})
        end
    end)


end)

Citizen.CreateThread(function()
    Wait(4000)

end)

