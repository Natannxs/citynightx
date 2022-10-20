local Lotery = setmetatable({},Lotery)
local CurrentZone = nil
Lotery.Config = ConfigLotery
ConfigLotery = {}
local myNumbers = {}

function Lotery:Generate()
    for i = 1, #Lotery.Config.Pos, 1 do
        v = Lotery.Config.Pos[i]
        local blip = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)
        SetBlipSprite(blip, v.Blips.sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, v.Blips.color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.Blips.name)
        EndTextCommandSetBlipName(blip)
        Zone:Add(v.Pos, self.EnterZone, self.ExitZone, i, 2.5)
        Ped:Add(v.Ped.name, v.Ped.model, v.Pos, nil)
        RMenu.Add("lotery", i, RageUI.CreateMenu(nil, "Actions disponibles", 10, 100))
    end
end
function Lotery.Open()
    myNumbers = {}
    TriggerServerCallback('lotery:GetAll', function(Data)
        TriggerServerCallback('lotery:GetLast', function(_Data)
            Lotery.Last = _Data
            Lotery.Last.participants = json.decode(Lotery.Last.participants)
            Lotery.Last.winners = json.decode(Lotery.Last.winners)
        end)
        Lotery.Datas = Data
        Lotery.Datas.participants = json.decode(Lotery.Datas.participants)

        for i = 1 , #Lotery.Datas.participants, 1 do
            if Lotery.Datas.participants[i].identifier == PlyUuid then
                table.insert( myNumbers, Lotery.Datas.participants[i].number)
            end
        end
        RageUI.Visible(RMenu:Get("lotery", CurrentZone), not RageUI.Visible(RMenu:Get("lotery", CurrentZone)))
    end)
end
function Lotery.EnterZone(zone)
    Hint:Set("Appuyez sur ~INPUT_CONTEXT~ pour ouvrir la loterie")
    KeySettings:Add("keyboard", "E", Lotery.Open, "Lotery")
    KeySettings:Add("controller", 46, Lotery.Open, "Lotery")
    CurrentZone = zone
end

function Lotery.ExitZone(zone)
    if CurrentZone ~= nil then
        Hint:RemoveAll()
        if RageUI.Visible(RMenu:Get("lotery", CurrentZone)) then
            RageUI.Visible(RMenu:Get("lotery", CurrentZone), not RageUI.Visible(RMenu:Get("lotery", CurrentZone)))
        end
        KeySettings:Clear("keyboard", "E", "Lotery")
        KeySettings:Clear("controller", 46, "Lotery")
        CurrentZone = nil
    end
end

Citizen.CreateThread(function()
    
    Lotery:Generate()
end)


Citizen.CreateThread(function()
    while true do
        Wait(1)
        if CurrentZone ~= nil then
            if RageUI.Visible(RMenu:Get("lotery", CurrentZone)) then
                RageUI.DrawContent({header = false, glare = false},function()
                    
                    RageUI.Button("Obtenir les résultats de la dernière loterie",nil,{},true,function(_, _, Selected)
                        if Selected  then
                            local p = false
                            for i = 1 , #Lotery.Last.winners , 1 do
                                if Lotery.Last.winners[i].identifier == PlyUuid and Lotery.Last.winners[i].taken == nil then
                                    ShowNotification("Vous avez gagné ~g~".. #Lotery.Last.participants * Lotery.Config.Price .."$")
                                    TriggerServerEvent("lotery:GetRecomp",PlyUuid,#Lotery.Last.participants * Lotery.Config.Price)
                                    TriggerServerCallback("core:GetMysource",function(_src)
                                        TriggerServerEvent("money:Add2", #Lotery.Last.participants * Lotery.Config.Price, _src)
                                    end)
                                    Lotery.Last.winners[i].taken = true
                                    
                                    p = true
                                    break 
                                end
                            end
                            if not p then
                                ShowNotification("~r~Vous avez déjà récupérer votre récompense !")
                            end
                        end
                    end)

                    RageUI.Button("Acheter un ticket","En achetant un ticket tentez de remporter jusqu'à ~b~" ..  Lotery.Config.Price * Lotery.Config.MaxTicket .. "$",{RightLabel = "~g~".. Lotery.Config.Price.. "$"},true,function(_, _, Selected)
                        if Selected then
                            numb = tonumber(KeyboardInput("Choisir un chiffre",nil,3))
                            f = false
                            for i = 1 , #myNumbers , 1 do
                                if myNumbers[i] == numb then
                                    f = true
                                    break
                                end
                            end
                            if numb == nil then return end
                            if numb > 0 and numb < Lotery.Config.MaxTicket and not f then
                                CloseAllMenus()
                                dataonWait = {price=Lotery.Config.Price,fct=function()
                                    TriggerServerEvent("insertLotery",numb)
                                end}           
                                TriggerEvent("payWith?")
                            elseif f then
                                ShowNotification("~g~Vous avez déjà choisis ce numéro")
                            else
                                ShowNotification("~r~Veuillez entrer un chiffre entre 0 et " .. Lotery.Config.MaxTicket)
                            end
                        end
                    end)
                    RageUI.CenterButton("-- Vos tickets --",nil,{},true,function()
                    end)
                    if #myNumbers == 0 then
                        RageUI.Button( "Vide" ,nil,{},true,function()
                        end)
                    end
                    for i = 1 , #myNumbers , 1 do

                        RageUI.Button("~g~> ~s~Nombre ~b~" ..myNumbers[i] ,nil,{},true,function()
                        end)
                    end


                    RageUI.CenterButton("-- État de la loterie en cours --",nil,{},true,function()
                    end)

                    RageUI.CenterButton("Joueurs ~b~" .. #Lotery.Datas.participants  .. "/" .. Lotery.Config.MaxTicket ,nil,{},true,function()
                    end)

                    RageUI.CenterButton("Montant en jeu ~b~" .. Lotery.Config.Price * #Lotery.Datas.participants .. "$" ,nil,{},true,function()
                    end)

                end)
            end
        end
    end
end)
