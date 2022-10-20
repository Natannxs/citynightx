local Blips = {
    {Pos = {x = 427.43, y = -981.21, z = 30.71}, sprite = 60, size = 1.0, color = 29, name = "Poste de police"},
    --{Pos = {x = 367.5, y = -1591.53, z = 36.95}, sprite = 60, size = 1.0, color = 70, name = "Sherif - Davis"},
    --{Pos = {x = -440.43, y = 6019.48, z = 31.49}, sprite = 60, size = 1.0, color = 70, name = "Sherif - Paleto Bay"},
    --{Pos = {x = 1856.64, y = 3679.66, z = 33.79}, sprite = 60, size = 1.0, color = 70, name = "Sherif - Sandy Shores"},
    {Pos = {x = 119.47, y = -1308.58, z = 29.71}, sprite = 121, size = 0.8, color = 61, name = "Unicorn"},
    {Pos = {x = 915.84, y = -181.18, z = 74.07}, sprite = 227, size = 0.8, color = 5, name = "Taxi"},
    --{name="Aéroport", color=3, sprite=90, Pos = {x=-1336.25, y=-3043.99, z=13.9444}},
    --{name="Aéroport", color=3, sprite=90, Pos = {x=2044.42, y=4768.07, z=41.0603}},

    {
        name = "Distributeur de Billets",
        color = 2,
        sprite = 434,
        size = 0.80,
        Pos = {x = 89.9733, y = 2.18227, z = 68.2283}
    },
    {
        name = "Distributeur de Billets",
        color = 2,
        sprite = 434,
        size = 0.80,
        Pos = {x = -526.065, y = -1221.99, z = 18.4549}
    },
    {
        name = "Distributeur de Billets",
        color = 2,
        sprite = 434,
        size = 0.80,
        Pos = {x = -2073.44, y = -317.245, z = 13.316}
    },
    {
        name = "Distributeur de Billets",
        color = 2,
        sprite = 434,
        size = 0.80,
        Pos = {x = -821.17, y = -1083.29, z = 11.1324}
    },
    {
        name = "Distributeur de Billets",
        color = 2,
        sprite = 434,
        size = 0.80,
        Pos = {x = 1686.4, y = 4816.36, z = 42.0092}
    },
    {name = "Distributeur de Billets", color = 2, sprite = 434, size = 0.80, Pos = {x = -95.90, y = 6455.62, z = 31.45}},
    {name = "Pacific Banque", color = 2, sprite = 108, size = 0.80, Pos = {x = 227.49, y = 212.99, z = 105.53}},
    {name = "Hôpital Los Santos", color = 5, sprite = 61, Pos = {x = 362.37, y = -592.53, z = 28.67}},
    --{name = "Hôpital Sandy Shores", color = 5, sprite = 61, Pos = {x = 1838.99, y = 3673.48, z = 34.28}},
    {name = "Mécano", color = 3, sprite = 402, Pos = {x = -205.61, y = -1308.41, z = 31.29}},
    --{name = "FlyWheels Garage", color = 47, sprite = 643, Pos = {x = 1776.74, y = 3327.54, z = 41.43}},
    {name = "Journaliste", color = 2, sprite = 184, Pos = {x = -582.75, y = -927.19, z = 36.83}},
    --{name="Taxi", color = 5, sprite=198, Pos = {x=909.18, y=-179.6, z=74.17}},
    --{name="Tabac", color = 2, sprite=79, Pos = {x=2010.8, y=3076.6, z=47.06}},

    --{name = "Chez Larry", color = 2, sprite = 77, Pos = {x = 1224.63, y = 2727.31, z = 38.00}},
    {name = "Coiffeur", color = 64, sprite = 71, Pos = {x = 131.60, y = -1714.24, z = 29.26}},
    {name = "Ponsonbys", color = 64, sprite = 366, Pos = {x = -716.84, y = -156.75, z = 36.98}},
    {name = "Agence immobilière", color = 64, sprite = 492, Pos = {x = -697.51, y = 271.68, z = 83.10}},
    --{name = "Le Pearls", color = 3, sprite = 267, Pos = {x = -1825.48, y = -1190.6, z = 14.44}},
    {name = "Chihuahua Hotdogs", color = 64, sprite = 52, Pos = {x = 49.19, y = -994.57, z = 29.27}},
    --{name = "Le Peque'Truck", color = 3, sprite = 67, Pos = {x = 898.62, y = -302.93, z = 65.57}},
    --{name = "Galaxy Club", color = 83, sprite = 614, Pos = {x = 356.18, y = 304.66, z = 103.72}}
}

Citizen.CreateThread(
    function()
        for i = 1, #Blips, 1 do
            local v = Blips[i]
            local blip = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)
            SetBlipSprite(blip, v.sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, v.size or 0.8)
            SetBlipColour(blip, v.color)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(v.name)
            EndTextCommandSetBlipName(blip)
        end
    end
)
