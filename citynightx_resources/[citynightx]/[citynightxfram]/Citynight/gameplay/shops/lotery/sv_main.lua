RegisterServerCallback("lotery:GetAll",function(source, callback)
    MySQL.Async.fetchAll('SELECT * from lotery ORDER BY id DESC', {}, function(r)
        callback(r[1])
    end)
end)


RegisterServerCallback("lotery:GetLast",function(source, callback)
    MySQL.Async.fetchAll('SELECT * from lotery ORDER BY id DESC', {}, function(r)
        callback(r[2])
    end)
end)
RegisterServerEvent("lotery:GetRecomp")
AddEventHandler("lotery:GetRecomp",function(uuid,amount)
    MySQL.Async.fetchAll('SELECT * from lotery ORDER BY id DESC', {}, function(r)
        local last = r[2]
        local winners = json.decode(last.winners)
        for i = 1 , #winners , 1 do
            if winners[i].identifier == uuid then
                winners[i].taken = true
            end
        end
        MySQL.Async.execute('UPDATE lotery SET winners = @numb WHERE id = @id', {
            ["@numb"] = json.encode(winners),
            ["@id"] = last.id
        }, function()
        end)
    end)
end)
RegisterServerEvent("insertLotery")
AddEventHandler("insertLotery",function(n)
    local _s = source
    MySQL.Async.fetchAll('SELECT * from lotery ORDER BY id DESC', {}, function(r)
        local uuid = Player.GetPlayer(_s).uuid
        local t = {identifier = uuid,number = n}
        local last = r[1]
        local participants = json.decode(last.participants)
        for i = 1 , #participants , 1 do
            if participants[i].identifier == uuid and participants[i].number == n then
                n = 0
            end
        end
        table.insert(participants,t)
        MySQL.Async.execute('UPDATE lotery SET participants = @numb WHERE id = @id', {
            ["@numb"] = json.encode(participants),
            ["@id"] = last.id
        }, function()
        end)
    end)
end)

function GenerateNewLotery()
    MySQL.Async.fetchAll('SELECT * from lotery ORDER BY id DESC', {}, function(r)
        local last = r[1]
        if last ~= nil then
            local participants = json.decode(last.participants)
            local winNumber = 0
            TriggerEvent("getRandom",function(d)
                winNumber = d
            end,100)
            if winNumber == 0 then winNumber = winNumber + 1 end
            local winners = {}
            for i = 1 , #participants, 1 do
                if participants[i].number == winNumber then
                    table.insert(winners,{index=i,identifier=participants[i].identifier})
                end
            end
            local discord_webhook = "https://canary.discord.com/api/webhooks/785337118447763466/Dihai1pb6qvPY9zRFxdDyR6rGeGzttlJSv179ByWYWq39GdNkXwrjQv7lq5kMrfI56TJ"
            local headers = {
            ['Content-Type'] = 'application/json'
            }
            local o = os.time()
            p = os.date("%d/%m/%Y", o)
            local data = {
            ["username"] = "LotoNight",
            ["embeds"] = {{
                ["title"]= "Nouveau tirage !",
                ["color"] = 1942002,
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ", os.time() )
            }}
            }
            data['embeds'][1]['description'] = "Le numéro gagnant est le " .. winNumber .. "\nMontant : " .. #participants * ConfigLotery.Price  .. "$\nIl y a " .. #winners .. " gagnants"
            PerformHttpRequest(discord_webhook, function(err, text, headers)end, 'POST', json.encode(data), headers)
            MySQL.Async.execute('UPDATE lotery SET winner_number = @numb, winners = @winners WHERE id = @id', {
                ["@numb"] = winNumber,
                ["@winners"] = json.encode(winners),
                ["@id"] = last.id
            }, function()
            end)
        end
        MySQL.Async.execute('INSERT INTO lotery(participants,winners) VALUES("[]","[]")', {
        }, function()
        end)
    end)
end


Citizen.CreateThread(function()


    Wait(4000)
    GenerateNewLotery()
end)




