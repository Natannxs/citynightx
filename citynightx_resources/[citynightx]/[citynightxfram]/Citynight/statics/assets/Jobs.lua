Jobs = {
    chomeur = {
        label = "👤 Citoyen",
        grade = {
            {
                label = "",
                salary = 50
            }
        }
    },
    admin_drug = {
        label = "Admin drogue",
        grade = {
            {
                label = "",
                salary = 0
            }
        }
    },
    -- Cueilleur = {
    --     label = "Cueilleur",
    --     label2 = "Cueilleur",
    --     FreeAccess = true,
    --     grade = {
    --         {
    --             label = "Ouvrier",
    --             salary = 0,
    --             name = "worker"
    --         },

    --     },
    --     requiredService = false,
    --     work = {

    --         recolte = {
    --             type = "recolte",
    --             workSize = 5.0,
    --             Pos = {x=363.24,y=6516.56,z=28.28},
    --             giveitem = "pomme",
    --             blipcolor =7,
    --             blipname = "Récolte de pomme",
    --             add = "~p~+ 1 Pomme",
    --             anim = {

    --                 lib = "amb@prop_human_movie_bulb@base",
    --                 anim = "base"

    --             },
    --         },

    --         traitement = {
    --             type = "traitement",
    --             workSize = 10.45,
    --             blipcolor =7,
    --             blipname = "Traitement des pommes",
    --             Pos =  {x=2911.4,y=4469.7,z=48.1},
    --             required = "pomme",
    --             giveitem = "jus_pomme",
    --             add = "~p~+ 1  Jus de pomme"
    --         },

    --         vente = {
    --             type = "vente",
    --             blipcolor =7,
    --             workSize = 10.45,
    --             blipname = "Vente",
    --             Pos = {x=-754.29,y=5579.12,z=36.71},
    --             required = "jus_pomme",
    --             price = math.random( 4,6 ),
    --             add = "~p~- 1 Jus de pomme"
    --         },

    --         vestiaire = {
    --             type = "Vestiaire",
    --             workSize = 1.45,
    --             Pos = {x=416.44,y=6520.76,z=27.71},
    --             Tenues = {
    --                 ['Tenue de services'] = {
    --                     male = {
    --                         ['tshirt_1'] = 15, ['tshirt_2'] = 0,
    --                         ['torso_1'] = 65, ['torso_2'] = 0,
    --                         ['decals_1'] = 0, ['decals_2'] = 0,
    --                         ['arms'] = 17,
    --                         ['pants_1'] = 38, ['pants_2'] = 0,
    --                         ['shoes_1'] = 25, ['shoes_2'] = 0,
    --                         ['helmet_1'] = 0, ['helmet_2'] = 0,
    --                         ['chain_1'] = 0, ['chain_2'] = 0,
    --                         ['ears_1'] = 0, ['ears_2'] = 0
    --                     },
    --                     female = {
    --                         ['tshirt_1'] = 14, ['tshirt_2'] = 0,
    --                         ['torso_1'] = 59, ['torso_2'] = 0,
    --                         ['decals_1'] = 0, ['decals_2'] = 0,
    --                         ['arms'] = 18,
    --                         ['pants_1'] = 38, ['pants_2'] = 0,
    --                         ['shoes_1'] = 25, ['shoes_2'] = 0,
    --                         ['helmet_1'] = 0, ['helmet_2'] = 0,
    --                         ['chain_1'] = 0, ['chain_2'] = 0,
    --                         ['ears_1'] = 0, ['ears_2'] = 0

    --                         }
    --                     }
    --                 }
    --             },

    --     },

    --     garage = {
    --         Name = "Garage Cueilleur",
    --         Pos =  {x = 407.08,  y = 6496.28,  z =27.88},
    --         Properties = {
    --             type = 1,
    --             Limit = 6,
    --             vehicles = {
    --                  {name="bobcatxl",label="Voiture de service",job=true,tuning = {
    --                      modXenon = true
    --                  }},
    --             },
    --             spawnpos = {x = 407.63,  y = 6492.24,  z =28.1, h = 89.41},

    --         },
    --         Blipdata = {
    --             Pos = {x = 407.08,  y = 6496.28,  z =27.88},
    --             Blipcolor  =5,
    --             Blipname = "Garage Cueilleur"
    --         --  },
    --         },
    --     },

    -- },
    mecano2 = {
        label = "🔧 FlyWheels Garage",
        label2 = "FlyWheels Garage",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage FlyWheels Garage",
            Pos = {x = 1752.42, y = 3325.83, z = 41.16},
            Properties = {
                type = 3,
                Limit = 10,
                zonesize = 1.0,
                vehicles = {},
                spawnpos = {x = 1755.02, y = 3323.07, z = 40.22, h = 200.6}
            },
            Blipdata = {
                Pos = {x = 1752.42, y = 3325.83, z = 41.16},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Menu = {
            menu = {
                title = "Mécano",
                subtitle = "Actions disponibles",
                name = "mecano_menuperso"
            },
            submenus = {
                ["Actions véhicule"] = {
                    submenu = "mecano_menuperso",
                    title = "Actions véhicule",
                    menus = {
                        buttons = {
                            {
                                label = "Inspecter l'état du véhicule",
                                onSelected = function()
                                    Mecano.CheckVehicle()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Ouvrir le capot",
                                onSelected = function()
                                    Mecano.OpenTrunk()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Réparer",
                                onSelected = function()
                                    Mecano.Repair()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Nettoyer",
                                onSelected = function()
                                    Mecano.CleanVehicule()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Mise en fourière",
                                onSelected = function()
                                    Mecano.Fouriere()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            }
                        },
                        submenus = {}
                    }
                }
            },
            buttons = {
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("mecano2")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annuler l'appel en cours",
                    onSelected = function()
                        TriggerEvent("call:cancelCall")
                    end
                }
            }
        },
        Extrapos = {
            Tow = {
                Pos = {
                    {x = 1774.9, y = 3311.02, z = 41.24}
                },
                Enter = EnterZoneTow,
                Exit = ExitZoneTow,
                zonesize = 1.5,
                Blips = {
                    sprite = 473,
                    color = 81,
                    name = "Fourrière FlyWheels Garage"
                },
                Marker = {
                    type = 1,
                    scale = {x = 1.5, y = 1.5, z = 0.6},
                    color = {r = 100, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = true
                }
            },
            LSCustoms = {
                Pos = {
                    {x = 1767.91, y = 3330.06, z = 40.45},
                    {x = 1765.18, y = 3341.17, z = 40.14}
                },
                Enter = function()
                    EnterZoneLSC_NORD()
                end,
                Exit = function()
                    ExitZoneLSC_NORD()
                end,
                zonesize = 3.0,
                Blips = {
                    sprite = 72,
                    color = 81,
                    name = "LSCustom"
                },
                Marker = {
                    type = 23,
                    scale = {x = 4.5, y = 4.5, z = 0.6},
                    color = {r = 100, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = true
                }
            }
        },
        Storage = {
            {
                Pos = {x = 1764.37, y = 3331.98, z = 40.45},
                Limit = 100,
                Name = "coffre_mecano2"
            }
        }
    },
    coiffeur = {
        label = "Coiffeur",
        label2 = "Coiffeur",
        grade = {
            {
                label = "CDD",
                salary = 100,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 110,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 120,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 140,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 150,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = -1278.90, y = -1115.73, z = 5.99},
                Limit = 100,
                Name = "coffre_coiffeur"
            }
        },
        Menu = {
            menu = {
                title = "coiffeur",
                subtitle = "Action",
                name = "coiffeur_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("coiffeur")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Coiffure",
                    onSelected = function()
                        for i = 1, 10, 1 do
                            Wait(1)
                            RageUI.GoBack()
                        end
                        RageUI.Visible(RMenu:Get("haircuts", "main"), true)
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil and text ~= "" then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "~s~"}
                            )
                            TriggerPlayerEvent("RageUI:Popup", -1, {message = "~h~" .. text})
                        end
                    end
                }
            }
        }
    },
    ammunation = {
        label = "Ammunation",
        label2 = "Ammunation",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = 250.58, y = -52.02, z = 69.20},
                Limit = 300,
                Name = "coffre_ammunation"
            }
        },
        garage = {
            Name = "Garage Ammunation",
            Pos = {x = 218.16, y = -35.44, z = 69.10},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                    {}
                },
                spawnpos = {x = 218.16, y = -35.44, z = 69.10, h = 341.78}
            },
            Blipdata = {
                Pos = {},
                Blipcolor = 7,
                Blipname = "Ammunation - Garage Ammunation"
            }
        },
        Extrapos = {
            CraftWeapon = {
                Pos = {
                    {x = 253.39, y = -53.04, z = 68.94}
                },
                restricted = {2, 3, 4, 5},
                Enter = function()
                    print("ENTER")
                    EnterCraftWeaponZone()
                end,
                Exit = function()
                    print("OUT")

                    ExitCraftWeaponZone()
                end,
                zonesize = 1.5,
                Blips = {
                    sprite = 150,
                    color = 69,
                    name = "Ammunation - Confection d'armes"
                },
                Marker = {
                    type = 1,
                    scale = {x = 1.5, y = 1.5, z = 0.2},
                    color = {r = 255, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = true
                }
            }
        },
        Extrablips = {
            {
                Pos = {x = 1079.79, y = -1982.99, z = 30.47},
                Blips = {
                    sprite = 478,
                    color = 43,
                    name = "Ammunation - Pièces en métal"
                }
            },
            {
                Pos = {x = -584.38, y = 5289.39, z = 69.26, a = 55.68}, -- { x = 454.1, y = -980.07, z = 29.69, a = 85.87 },
                Blips = {
                    sprite = 478,
                    Enabled = false, -- Image off
                    color = 43,
                    name = "Ammunation - Pièces en bois"
                }
            },
            {
                Pos = {x = 286.32, y = -3029.06, z = 4.69, a = 259.22}, -- { x = 454.1, y = -980.07, z = 29.69, a = 85.87 },
                Blips = {
                    sprite = 478,
                    Enabled = false, -- Image off
                    color = 43,
                    name = "Ammunation - Pièces en plastique"
                }
            }
        },
        Menu = {
            menu = {
                title = "ammunation",
                subtitle = "Action",
                name = "ammunation_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("ammunation")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil and text ~= "" then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "~s~"}
                            )
                            TriggerPlayerEvent("RageUI:Popup", -1, {message = "~h~" .. text})
                        end
                    end
                }
            }
        }
    },
    tatoo = {
        label = "Tatoueur",
        label2 = "Tatoueur",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = 322.16, y = 185.76, z = 102.59},
                Limit = 100,
                Name = "coffre_tatoo"
            }
        },
        Menu = {
            menu = {
                title = "Tatoueur",
                subtitle = "Action",
                name = "tatoueur_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("tatoo")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Tatouage",
                    onSelected = function()
                        for i = 1, 10, 1 do
                            Wait(1)
                            RageUI.GoBack()
                        end
                        RageUI.Visible(RMenu:Get("tatoo", "main"), true)
                    end
                }
            }
        }
    },
    tatoo2 = {
        label = "Tatoueur Nord",
        label2 = "Tatoueur Nord",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = 1865.211, y = 3749.206, z = 32.30},
                Limit = 100,
                Name = "coffre_tatoo_nord"
            }
        },
        Menu = {
            menu = {
                title = "Tatoueur",
                subtitle = "Action",
                name = "tatoueur_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("tatoo2")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Tatouage",
                    onSelected = function()
                        for i = 1, 10, 1 do
                            Wait(1)
                            RageUI.GoBack()
                        end
                        RageUI.Visible(RMenu:Get("tatoo", "main"), true)
                    end
                }
            }
        }
    },
    Fermier = {
        label = "Fermier",
        label2 = "Fermier",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = 2317.07, y = 4896.36, z = 40.81},
                Limit = 100,
                Name = "coffre_fermier"
            }
        },
        requiredService = false,
        work = {
            recolte = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = 645.62, y = 6470.61, z = 30.6},
                giveitem = "blez",
                blipcolor = 7,
                blipname = "Récolte du blé",
                add = "~p~+ 1 Blé",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte2 = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = 1869.3, y = 4814.88, z = 44.05},
                giveitem = "pommeterre",
                blipcolor = 7,
                blipname = "Récolte de pomme de terre",
                add = "~p~+ 1 Pomme de terre",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte3 = {
                type = "recolte",
                workSize = 2.0,
                Pos = {x = 2306.9, y = 4881.98, z = 41.81},
                giveitem = "milk",
                blipcolor = 7,
                blipname = "Récupérer du lait",
                add = "~p~+ 1 Bouteille de Lait",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte4 = {
                type = "recolte",
                workSize = 2.0,
                Pos = {x = 2313.76, y = 4888.14, z = 41.81},
                giveitem = "chicken",
                blipcolor = 7,
                blipname = "Récupérer du Poulet",
                add = "~p~+ 1 Poulet",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            traitement = {
                type = "traitement",
                workSize = 7.45,
                blipcolor = 7,
                blipname = "Traitement du blé",
                Pos = {x = 2553.31, y = 4670.74, z = 32.95},
                required = "blez",
                giveitem = "cereale",
                add = "~p~+ 1  Céréale"
            },
            traitement2 = {
                type = "traitement",
                workSize = 7.45,
                blipcolor = 7,
                blipname = "Traitement de la farine",
                Pos = {x = 387.95, y = 3586.49, z = 33.29},
                required = "blez",
                giveitem = "farine",
                add = "~p~+ 1  Sac de farine"
            },
            -- traitement3 = {
            --     type = "traitement",
            --     workSize = 7.45,
            --     blipcolor =7,
            --     blipname = "Traitement de la farine",
            --     Pos =  {x=2680.62,y=3508.35,z=53.3},
            --     required = "farine",
            --     giveitem = "pain",
            --     add = "~p~+ 1  Pain"
            -- },
            vente = {
                type = "vente",
                blipcolor = 7,
                workSize = 7.45,
                blipname = "Vente",
                Pos = {x = 1677.87, y = 4881.57, z = 41.04},
                required = "farine",
                price = math.random(10, 12),
                add = "~p~- 1 Sac de farine"
            }
        },
        garage = {
            Name = "Garage Fermier",
            Pos = {x = 2306.05, y = 4894.52, z = 41.71},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                    {
                        name = "bobcatxl",
                        label = "Voiture de service",
                        job = true,
                        tuning = {
                            modXenon = true
                        }
                    }
                },
                spawnpos = {x = 2306.05, y = 4894.52, z = 41.71, h = 333.27}
            },
            Blipdata = {
                Pos = {x = 2306.05, y = 4894.52, z = 41.71},
                Blipcolor = 5,
                Blipname = "Garage Fermier"
            }
        },
        Menu = {
            menu = {
                title = "Fermier",
                subtitle = "Action",
                name = "fermier_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("fermier")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Fermier",
                    onSelected = function()
                        for i = 1, 10, 1 do
                            Wait(1)
                            RageUI.GoBack()
                        end
                        RageUI.Visible(RMenu:Get("fermier", "main"), true)
                    end
                }
            }
        }
    },
    ChihuahuaHotDogs = {
        label = "🍖 ChihuahuaHotDogs",
        label2 = "ChihuahuaHotDogs",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 180,
                name = "cdd",
                show = true
            },
            {
                label = "PDG",
                salary = 200,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "ChihuahuaHotDogs",
                subtitle = "Actions disponibles",
                name = "ChihuahuaHotDogs_menuperso"
            },
            buttons = {
                -- {label="Craft",onSelected=function() ToggleCraftMenu() end},
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("ChihuahuaHotDogs")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
    },
    pequetruck = {
        label = "🍖 PequeTruck",
        label2 = "Pequetruck",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Peque'Truck",
                subtitle = "Actions disponibles",
                name = "pequetruck_menuperso"
            },
            buttons = {
                -- {label="Craft",onSelected=function() ToggleCraftMenu() end},
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("pequetruck")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil and text ~= "" then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        garage = {
            Name = "Garage pequetruck",
            Pos = {x = 770.04, y = -321.35, z = 58.88},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 770.04, y = -321.35, z = 58.88, h = 284.14}
            },
            Blipdata = {
                Pos = {x = 770.04, y = -321.35, z = 58.88, h = 284.14},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Storage = {
            {
                Pos = {x = 890.3, y = -291.93, z = 64.89},
                Limit = 200,
                Name = "coffre_restaurantpeque"
            }
        },
        requiredService = false,
        work = {
            traitement2 = {
                --frites
                type = "traitement",
                workSize = 1.20,
                blipcolor = 5,
                blipname = "Friteuse",
                Pos = {x = 892.57, y = -292.91, z = 65.89},
                required = "pommeterre",
                giveitem = "frites",
                noFarm = true,
                RemoveItem = "pommeterre",
                add = "~p~+ 1  Barquette de frites"
            },
            traitement = {
                --milkshack
                type = "traitement",
                workSize = 1.20,
                blipcolor = 6,
                blipname = "Traitement Milkshake",
                Pos = {x = 889.43, y = -296.76, z = 64.65},
                required = "milk",
                giveitem = "milkshack",
                RemoveItem = "milk",
                noFarm = true,
                add = "~p~+ 1  Milkshake"
            },
            traitement3 = {
                --hamburger
                type = "traitement",
                workSize = 1.20,
                blipcolor = 7,
                noFarm = true,
                blipname = "Grill Burger Poulet",
                Pos = {x = 891.73, y = -290.44, z = 64.88},
                required = {
                    {name = "bread", count = 1},
                    {name = "chicken", count = 1}
                },
                giveitem = "burger",
                RemoveItem = {
                    {name = "bread", count = 1},
                    {name = "chicken", count = 1}
                },
                add = "~p~+ 1  Hamburger poulet"
            },
            traitement5 = {
                --hamburger
                type = "traitement",
                workSize = 1.20,
                blipcolor = 8,
                noFarm = true,
                blipname = "Grill Burger Healthy",
                Pos = {x = 888.95, y = -293.52, z = 64.71},
                required = {
                    {name = "bread", count = 1},
                    {name = "meat", count = 1}
                },
                giveitem = "burgerhealthy",
                RemoveItem = {
                    {name = "bread", count = 1},
                    {name = "meat", count = 1}
                },
                add = "~p~+ 1  Hamburger Healthy"
            }
        }
    },
    -- tabac = {
    -- 	label = "Tabac",
    -- 	FreeAccess = false,
    -- 	grade = {
    -- 		{
    -- 			label = "Recrue",
    -- 			salary = 110,
    -- 			name = "recrue",
    -- 		},
    -- 		{
    -- 			label = "Tabac",
    -- 			salary = 120,
    -- 			name = "tabac",
    -- 		},
    -- 		{
    -- 			label = "Patron",
    -- 			salary = 135,
    -- 			name = "boss",
    -- 		}
    -- 	},
    -- 	Menu = {
    -- 		menu = {
    -- 			title = "Tabac",
    -- 			subtitle = "Action",
    -- 			name = "tabac_menuperso"
    -- 		},
    -- 		buttons = {
    -- 			{label="Facturation",onSelected=function() CreateFacture("tabac") end,ActiveFct=function() HoverPlayer() end},
    -- 		},
    -- 	},
    -- 	garage = {
    --         Name = "Garage Tabac",
    --         Pos =  {x = 1996.21,  y = 3037.2,  z =47.03},
    --         Properties = {
    --             type = 1,
    --             Limit = 5,
    --             vehicles = {
    --                 {name="bison",label="Voiture de service",job=true,tuning = {
    --                     modXenon = false
    --                 }},
    --             },
    --             spawnpos = {x = 1996.21,  y = 3037.2,  z =47.03, h = 147.69},

    --         },
    --         Blipdata = {
    --             Pos = {x = 1996.21,  y = 3037.2,  z =47.03},
    --             Blipcolor  =5,
    --             Blipname = "Garage Tabac"
    --         --  },
    --         },
    --     },
    --     requiredService = false,

    --     work = {

    --         recolte = {
    --             type = "recolte",
    --             workSize = 2.0,
    --             Pos = {x=268.4737, y=6478.4584, z=29.70},
    --             giveitem = "feuillecigarette",
    --             blipcolor = 2,
    --             blipname = "Récolte",
    --             add = "~p~+ 1 Feuille de Cigarette",
    --             anim = {

    --                 lib = "anim@mp_snowball",
    --                 anim = "pickup_snowball"

    --             },
    --         },

    --         traitement = {
    --             type = "traitement",
    --             workSize = 2.40,
    --             blipcolor = 2,
    --             blipname = "Traitement",
    --             Pos = {x=1543.567, y=2176.943, z=77.814},
    --             required = "feuillecigarette",
    --             giveitem = "tabac",
    --             RemoveItem = "feuillecigarette",
    --             add = "~p~+ 1  Tabac"
    --         },

    --         traitement2 = {
    --             type = "traitement",
    --             workSize = 2.0,
    --             blipcolor = 2,
    --             blipname = "Traitement 2",
    --             Pos = {x=811.337, y=2179.402, z=51.388},
    --             required = "tabac",
    --             giveitem = "cigarette",
    --             RemoveItem = "tabac",
    --             add = "~p~+ 1  Tabac"
    --         },

    --         vente = {
    --             type = "vente",
    --             blipcolor = 2,
    --             workSize = 2.0,
    --             blipname = "Vente",
    --             Pos = {x = -158.737, y = -54.651, z = 53.410},
    --             required = "cigarette",
    --             RemoveItem = "cigarette",
    --             price = math.random( 1,2 ),
    --             add = "~p~- 1 Cigarette"
    --         },
    --     }
    -- },

    journaliste = {
        label = "Journaliste",
        label2 = "Journaliste",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 120,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 140,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 160,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 180,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 220,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Journaliste",
                subtitle = "Actions",
                name = "journaliste_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("journaliste")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = -580.55, y = -926.00, z = 22.87},
                Limit = 100,
                Name = "coffre_journaliste"
            },
        },
        garage = {
            Name = "Garage Journaliste",
            Pos = {x = -555.99, y = -930.37, z = 23.85},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -555.99, y = -930.37, z = 23.85, h = 267.60}
            },
            Blipdata = {
                Pos = {x = -555.99, y = -930.37, z = 23.85},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        }
    },
    avocat = {
        label = "Avocat",
        label2 = "Avocat",
        FreeAccess = false,
        grade = {
            {
                label = "Avocat",
                salary = 0,
                name = "avocat"
            }
        }
        -- Menu = {
        --     menu = {
        --         title = "Avocat",
        --         subtitle = "Actions",
        --         name = "avocat_menuperso"
        --     },
        --     buttons = {
        --         {label="Facturation",onSelected=function() CreateFacture("avocat") end,ActiveFct=function() HoverPlayer() end},
        --     },
        -- },
        -- garage = {
        --     Name = "Garage Journaliste",
        --     Pos =  {x = -1095.3,  y = -254.39,  z =37.68},
        --     Properties = {
        --         type = 1,
        --         Limit = 5,
        --         vehicles = {
        --             -- {name="baller",label="Voiture de service",job=true,tuning = {
        --             --     modXenon = true
        --             -- }},
        --         },
        --         spawnpos = {x = -1100.44,  y = -262.43,  z =37.68,h=197.99},

        --     },
        --     Blipdata = {
        --         Pos = {x = -1095.3,  y = -254.39,  z =37.68},
        --         Blipcolor  =5,
        --         Blipname = "Garage"
        --     },

        -- },
    },
    night = {
        label = "Night-Club",
        label2 = "Night-Club",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Night-Club",
                subtitle = "Actions",
                name = "night_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("night")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        garage = {
            Name = "Garage Night-Club",
            Pos = {x = 367.85, y = 296.09, z = 102.50},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 367.85, y = 296.09, z = 102.50, h = 353.35}
            },
            Blipdata = {
                Pos = "none"
            }
        },
        Storage = {
            {
                Pos = {x = 393.51, y = 278.76, z = 94.10},
                Limit = 100,
                Name = "coffre_NightClub"
            },
            {
                Pos = {x = 356.74, y = 282.33, z = 93.30},
                Limit = 100,
                Name = "Frigo_1"
            },
            {
                Pos = {x = 351.87, y = 288.20, z = 90.30},
                Limit = 100,
                Name = "Frigo_2"
            }
        }
    },
    larry = {
        label = "Larry",
        label2 = "Larry",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "larry",
                subtitle = "Actions",
                name = "larry_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("larry")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        garage = {
            Name = "Garage_larry",
            Pos = {x = 1238.61, y = 2716.19, z = 38.03},
            Properties = {
                type = 3, --job public
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 1238.61, y = 2716.19, z = 38.03, h = 176.98}
            },
            Blipdata = {
                Pos = {x = 1232.87, y = 2725.22, z = 37.00},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Storage = {
            {
                Pos = {x = 1221.26, y = 2739.89, z = 38.01},
                Limit = 100,
                Name = "coffre_Larry"
            }
        }
    },
    Mosley = {
        label = "Mosley",
        label2 = "Mosley",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Mosley'S",
                subtitle = "Actions",
                name = "mosley_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("mosley")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        garage = {
            Name = "Garage_mosley",
            Pos = {x = -12.16, y = -1664.4, z = 28.48},
            Properties = {
                type = 3, --job
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -12.16, y = -1664.4, z = 28.48, h = 139.54}
            },
            Blipdata = {
                Pos = {x = -12.16, y = -1664.4, z = 28.48},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Storage = {
            {
                Pos = {x = -33.56, y = -1668.81, z = 28.48},
                Limit = 100,
                Name = "coffre_mosley"
            }
        }
    },
    distillerie = {
        label = "🍹 Distillerie",
        label2 = "Distillerie",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Distillerie",
                subtitle = "Actions disponibles",
                name = "distillerie_menuperso"
            },
            buttons = {
                {
                    label = "Craft",
                    onSelected = function()
                        ToggleCraftMenu()
                    end
                },
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("distillerie")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        garage = {
            Name = "Garage distillerie",
            Pos = {x = -1887.76, y = 2045.01, z = 140.86},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -1895.71, y = 2034.61, z = 141.86, h = 339.66}
            },
            Blipdata = {
                Pos = {x = -1887.76, y = 2045.01, z = 140.86},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Storage = {
            {
                Pos = {x = -1912.07, y = 2073.65, z = 139.40},
                Limit = 100,
                Name = "coffre_distillerie"
            }
        },
        requiredService = false,
        work = {
            recolte = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = -1812.54, y = 2206.83, z = 92.37},
                giveitem = "raisin",
                blipcolor = 7,
                blipname = "Récolte",
                add = "~p~+ 1 Raisin",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte2 = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = -1922.77, y = 1963.893, z = 149.18},
                giveitem = "agave",
                blipcolor = 7,
                blipname = "Récolte",
                add = "~p~+ 1 Agave",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte3 = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = -1597.12, y = 2266.27, z = 68.63},
                giveitem = "c_sucre",
                blipcolor = 7,
                blipname = "Récolte",
                add = "~p~+ 1 Canne a sucre",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            recolte4 = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = 2151.64, y = 5167.51, z = 54.67},
                giveitem = "levure",
                blipcolor = 7,
                blipname = "Récolte",
                add = "~p~+ 1 Levure",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            traitement2 = {
                type = "traitement",
                workSize = 10.45,
                blipcolor = 7,
                blipname = "Traitement raisin",
                Pos = {x = 472.59, y = 3566.54, z = 33.24},
                required = "raisin",
                giveitem = "jus_raisin",
                RemoveItem = "raisin",
                add = "~p~+ 1  Jus de raisin"
            },
            traitement = {
                type = "traitement",
                workSize = 10.45,
                blipcolor = 7,
                blipname = "Traitement vin",
                Pos = {x = -1929.02, y = 1779.09, z = 173.07},
                required = "jus_raisin",
                giveitemType = 1,
                add = "~p~+ 1  Bouteille de vin",
                giveitem = {
                    {name = "bouteille_vin", count = 1, chanceDrop = 75},
                    {name = "grand_cru", count = 1, chanceDrop = 25}
                }
            },
            vente = {
                type = "vente",
                blipcolor = 7,
                workSize = 5.45,
                blipname = "Vente",
                Pos = {x = 1677.34, y = 4882.38, z = 42.04},
                required = "jus_raisin",
                RemoveItem = "jus_raisin",
                price = math.random(10, 12),
                add = "~p~- 1 Jus de raisin"
            }
        }
    },
    raffinerie = {
        label = "Raffinerie",
        label2 = "Raffinerie",
        FreeAccess = false,
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Raffinerie",
                subtitle = "Actions disponibles",
                name = "Raffinerie_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("raffinerie")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        requiredService = true,
        work = {
            recolte = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = 51.48, y = 6300.37, z = 31.23},
                giveitem = "petrol_baril",
                blipcolor = 7,
                blipname = "Récolte",
                add = "~p~+ 1 Baril de Pétrole",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            traitement = {
                type = "traitement",
                workSize = 5.45,
                blipcolor = 7,
                blipname = "Traitement livraison pétrole",
                Pos = {x = 433.07, y = 3575.44, z = 33.24},
                required = "petrol_baril",
                giveitem = "petrol_garbage",
                add = "~p~+ 1  déchets pétroliers"
            },
            vente = {
                type = "vente",
                blipcolor = 7,
                workSize = 5.45,
                blipname = "Vente",
                Pos = {x = 1701.08, y = 4915.01, z = 42.08},
                required = "petrol_garbage",
                price = math.random(10, 12),
                add = "~p~- 1 Déchets pétroliers"
            }
        },
        garage = {
            Name = "Garage Raffinerie",
            Pos = {x = 2905.54, y = 4386.1, z = 50.28},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 2905.54, y = 4386.1, z = 50.28, h = 291.65}
            },
            Blipdata = {
                Pos = {x = 2905.54, y = 4386.1, z = 50.28},
                Blipcolor = 5,
                Blipname = "Garage Raffinerie"
            }
        }
    },
    lssd = {
        label = "👮🏼 LSSD",
        label2 = "lssd",
        -- radios = {1,2},
        grade = {
            {
                label = "Recrue",
                salary = 225,
                name = "recrue"
            },
            {
                label = "Shérif adjoint",
                salary = 240,
                name = "sherifadjoint"
            },
            {
                label = "Shérif adjoint II",
                salary = 240,
                name = "sherifadjoint2"
            },
            {
                label = "Shérif adjoint III",
                salary = 240,
                name = "sherifadjoint3"
            },
            {
                label = "Sergent I",
                salary = 260,
                name = "sergent"
            },
            {
                label = "Lieutenant",
                salary = 290,
                name = "drh"
            },
            {
                label = "Shérif",
                salary = 330,
                name = "boss"
            }
        },
        garage = {
            Name = "Garage LSSD SandyShore",
            Pos = {x = 1873.98, y = 3686.96, z = 32.59},
            Properties = {
                type = 3,
                Limit = 64,
                vehicles = {},
                spawnpos = {x = 1873.98, y = 3686.96, z = 33.59, h = 197.337}
            },
            Blipdata = {
                Pos = {x = 1873.98, y = 3686.96, z = 33.59},
                Blipcolor = 5,
                Blipname = "Garage LSSD SandyShore"
            }
        },
        garage2 = {
            Name = "Garage LSSD Paleto",
            Pos = {x = -469.92, y = 6019.82, z = 30.34},
            Properties = {
                type = 3,
                Limit = 64,
                vehicles = {},
                spawnpos = {x = -469.92, y = 6019.82, z = 31.34, h = 294.42}
            },
            Blipdata = {
                Pos = {x = -469.92, y = 6019.82, z = 31.34},
                Blipcolor = 5,
                Blipname = "Garage LSSD Paleto"
            }
        },
        garage3 = {
            Name = "Helipad Sherif",
            Pos = {x = -475.13, y = 5988.67, z = 31.34},
            Properties = {
                type = 2,
                Limit = 10,
                zonesize = 1.5,
                vehicles = {
                    {
                        name = "polmav",
                        label = "Helicoptere de police",
                        job = true,
                        tuning = {
                            modXenon = false,
                            modLivery = 0
                        }
                    }
                },
                spawnpos = {x = -475.13, y = 5988.67, z = 31.34, h = 315.34}
            },
            Blipdata = {
                Pos = {x = -475.13, y = 5988.67, z = 31.34},
                Blipcolor = 5,
                Blipname = "Helipad Sherif"
            }
        },
        Menu = {
            menu = {
                title = "Sherif",
                subtitle = "Actions disponibles",
                name = "police_menuperso"
            },
            submenus = {
                ["Actions citoyen"] = {
                    submenu = "police_menuperso",
                    title = "Actions citoyen",
                    menus = {
                        buttons = {
                            {
                                label = "Menotter",
                                onSelected = function()
                                    Police.HandcuffPly()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Démenotter",
                                onSelected = function()
                                    Police.CutMenottes()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Retrait points permis",
                                onSelected = function()
                                    Police.RetraitPermis()
                                end
                            },
                            {
                                label = "Amendes",
                                onSelected = function()
                                    CreateFacture("lssd")
                                end
                            },
                            {
                                label = "Test poudre à feu",
                                onSelected = function()
                                    Police.Powder()
                                end
                            },
                            {
                                label = "Test stupéfiant",
                                onSelected = function()
                                    Police.Stup()
                                end
                            },
                            {
                                label = "Photo d'identité",
                                onSelected = function()
                                    Police.PhotoIdent()
                                end
                            },
                            {
                                label = "Délivrer le port d'arme",
                                onSelected = function()
                                    Police.PutPortWeapon()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Mettre dans le véhicule",
                                onSelected = function()
                                    Police.PutInVeh()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Sortir du véhicule",
                                onSelected = function()
                                    Police.SortirVeh()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Bracelet électronique",
                                onSelected = function()
                                    Police.Bracelet()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Actions traffic"] = {
                    submenu = "police_menuperso",
                    title = "Actions traffic",
                    menus = {
                        buttons = {
                            {
                                label = "Modifier la zone",
                                onSelected = function()
                                    Police.EditZone()
                                end
                            },
                            {
                                label = "Changer la vitesse de la zone",
                                desc = "0 pour que les véhicules soient immobiles",
                                onSelected = function()
                                    Police.ChangeZone()
                                end
                            },
                            {
                                label = "Supprimer la limite de vitesse",
                                onSelected = function()
                                    Police.RemoveZone()
                                end
                            },
                            {
                                label = "Afficher la zone",
                                onSelected = function()
                                end,
                                ActiveFct = function()
                                    Police.ShowZone()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Actions véhicule"] = {
                    submenu = "police_menuperso",
                    title = "Actions véhicule",
                    menus = {
                        buttons = {
                            {
                                label = "Inspecter la plaque",
                                onSelected = function()
                                    Police.PlateCheck()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Crocheter",
                                onSelected = function()
                                    Police.Crocheter()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Immobiliser",
                                onSelected = function()
                                    Police.Immobiliser()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Désimmobiliser",
                                onSelected = function()
                                    Police.Desimmobiliser()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Informations effectifs"] = {
                    submenu = "police_menuperso",
                    title = "Effectifs",
                    menus = {
                        buttons = {
                            {
                                label = "Sherifs en service",
                                onSelected = function()
                                    TriggerServerEvent("service:showOnDuty", "lssd")
                                end
                            },
                            {
                                label = "[COOP] Agents LSPD en service",
                                onSelected = function()
                                    TriggerServerEvent("service:showOnDuty", "police")
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Action objets"] = {
                    submenu = "police_menuperso",
                    title = "Placer objets",
                    menus = {
                        buttons = {
                            {
                                label = "Mettre une herse",
                                onSelected = function()
                                    useHerse()
                                end
                            },
                            {
                                label = "Mettre un cone",
                                onSelected = function()
                                    useCone()
                                end
                            },
                            {
                                label = "Mettre une barriere",
                                onSelected = function()
                                    useBarrier()
                                end
                            },
                            {
                                label = "Supprimer herse",
                                onSelected = function()
                                    DeleteHerse()
                                end
                            },
                            {
                                label = "Supprimer un cone",
                                onSelected = function()
                                    DeleteCone()
                                end
                            },
                            {
                                label = "Supprimer une barriere",
                                onSelected = function()
                                    DeleteBarrier()
                                end
                            }
                        },
                        submenu = {}
                    }
                },
                ["Action renforts"] = {
                    submenu = "police_menuperso",
                    title = "Renforts",
                    menus = {
                        buttons = {
                            {
                                label = "Renforts",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "lssd",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~2 \n~b~Importance : ~s~Légère"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            },
                            {
                                label = "Renforts ~o~important",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "lssd",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~3 \n~b~Importance : ~o~Importante"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            },
                            {
                                label = "Renforts ~r~~h~urgent",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "lssd",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~99 \n~b~Importance : ~r~~h~URGENTE"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            }
                        },
                        submenu = {}
                    }
                }
            },
            buttons = {
                -- {label="Activer/Désactiver le tracking",onSelected=function()
                --     Police.ActivateTrack()
                -- end},
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Annuler l'appel en cours",
                    onSelected = function()
                        TriggerEvent("call:cancelCall")
                    end
                }
            }
        },
        Storage = {
            -- SandyShore
            {
                Pos = {x = 1855.8, y = 3698.2, z = 33.21},
                Limit = 99999999,
                Name = "coffre Saisies"
            },
            {
                Pos = {x = 1861.3, y = 3688.35, z = 33.26},
                Limit = 99999999,
                Name = "coffre LSSD"
            },
            -- PALETO
            {
                Pos = {x = -442.06, y = 5987.68, z = 30.82},
                Limit = 99999999,
                Name = "coffre Saisies"
            },
            {
                Pos = {x = -439.9, y = 5991.86, z = 30.82},
                Limit = 99999999,
                Name = "coffre LSSD"
            }
        },
        work = {
            vestiaire = {
                type = "Vestiaire",
                workSize = 1.45,
                Pos = {x = 1859.18, y = 3695.75, z = 34.23},
                vestiaire = {
                    type = "Vestiaire",
                    workSize = 1.45,
                    Pos = {x = 1859.18, y = 3695.75, z = 34.23},
                    Tenues = TenueLSSD
                }
            }
        }
    },
    police = {
        label = "👮🏼 LSPD",
        label2 = "LSPD",
        radios = {1, 2},
        grade = {
            {
                label = "Rookie",
                salary = 225,
                name = "cadet"
            },
            {
                label = "Officier I",
                salary = 240,
                name = "officier1"
            },
            {
                label = "Officier II",
                salary = 240,
                name = "officier2"
            },
            {
                label = "Officier III",
                salary = 240,
                name = "officier3"
            },
            {
                label = "Sergent I",
                salary = 260,
                name = "sergent1"
            },
            {
                label = "Sergent II",
                salary = 260,
                name = "sergent2"
            },
            {
                label = "Lieutenant",
                salary = 290,
                name = "drh"
            },
            {
                label = "Capitaine",
                salary = 330,
                name = "boss"
            }
        },
        garage = {
            Name = "Garage police",
            Pos = {x = 453.68, y = -1018.14, z = 28.44},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 453.68, y = -1018.14, z = 28.44, h = 98.9}
            },
            Blipdata = {
                Pos = {x = 453.68, y = -1018.14, z = 28.44},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        garage2 = {
            Name = "Garage police2",
            Pos = {x = 436.27, y = -1014.58, z = 28.32},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 436.27, y = -1014.58, z = 28.32, h = 180.07}
            },
            Blipdata = {
                Pos = {x = 436.51, y = -994.16, z = 26.0},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        garage3 = {
            Name = "Garage Helipad",
            Pos = {x = 449.94, y = -981.04, z = 43.69},
            Properties = {
                type = 2,
                Limit = 2,
                zonesize = 1.5,
                vehicles = {
                    {
                        name = "polmav",
                        label = "Helicoptere de police",
                        job = true,
                        tuning = {
                            modXenon = false,
                            modLivery = 0
                        }
                    }
                },
                spawnpos = {x = 449.94, y = -981.04, z = 43.69, h = 119.17}
            },
            Blipdata = {
                Pos = {x = 449.94, y = -981.04, z = 43.69},
                Blipcolor = 5,
                Blipname = "Helipad"
            }
        },
        Menu = {
            menu = {
                title = "Police",
                subtitle = "Actions disponibles",
                name = "police_menuperso"
            },
            submenus = {
                ["Actions citoyen"] = {
                    submenu = "police_menuperso",
                    title = "Actions citoyen",
                    menus = {
                        buttons = {
                            {
                                label = "Menotter",
                                onSelected = function()
                                    Police.HandcuffPly()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Démenotter",
                                onSelected = function()
                                    Police.CutMenottes()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Retrait points permis",
                                onSelected = function()
                                    Police.RetraitPermis()
                                end
                            },
                            {
                                label = "Amendes",
                                onSelected = function()
                                    CreateFacture("police")
                                end
                            },
                            {
                                label = "Test poudre à feu",
                                onSelected = function()
                                    Police.Powder()
                                end
                            },
                            {
                                label = "Test stupéfiant",
                                onSelected = function()
                                    Police.Stup()
                                end
                            },
                            {
                                label = "Photo d'identité",
                                onSelected = function()
                                    Police.PhotoIdent()
                                end
                            },
                            {
                                label = "Délivrer le port d'arme",
                                onSelected = function()
                                    Police.PutPortWeapon()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Mettre dans le véhicule",
                                onSelected = function()
                                    Police.PutInVeh()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Sortir du véhicule",
                                onSelected = function()
                                    Police.SortirVeh()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            },
                            {
                                label = "Bracelet électronique",
                                onSelected = function()
                                    Police.Bracelet()
                                end,
                                ActiveFct = function()
                                    HoverPlayer()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Actions traffic"] = {
                    submenu = "police_menuperso",
                    title = "Actions traffic",
                    menus = {
                        buttons = {
                            {
                                label = "Modifier la zone",
                                onSelected = function()
                                    Police.EditZone()
                                end
                            },
                            {
                                label = "Changer la vitesse de la zone",
                                desc = "0 pour que les véhicules soient immobiles",
                                onSelected = function()
                                    Police.ChangeZone()
                                end
                            },
                            {
                                label = "Supprimer la limite de vitesse",
                                onSelected = function()
                                    Police.RemoveZone()
                                end
                            },
                            {
                                label = "Afficher la zone",
                                onSelected = function()
                                end,
                                ActiveFct = function()
                                    Police.ShowZone()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Actions véhicule"] = {
                    submenu = "police_menuperso",
                    title = "Actions véhicule",
                    menus = {
                        buttons = {
                            {
                                label = "Inspecter la plaque",
                                onSelected = function()
                                    Police.PlateCheck()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Crocheter",
                                onSelected = function()
                                    Police.Crocheter()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Immobiliser",
                                onSelected = function()
                                    Police.Immobiliser()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Désimmobiliser",
                                onSelected = function()
                                    Police.Desimmobiliser()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Action objets"] = {
                    submenu = "police_menuperso",
                    title = "Placer objets",
                    menus = {
                        buttons = {
                            {
                                label = "Mettre une herse",
                                onSelected = function()
                                    useHerse()
                                end
                            },
                            {
                                label = "Mettre un cone",
                                onSelected = function()
                                    useCone()
                                end
                            },
                            {
                                label = "Mettre une barriere",
                                onSelected = function()
                                    useBarrier()
                                end
                            },
                            {
                                label = "Supprimer herse",
                                onSelected = function()
                                    DeleteHerse()
                                end
                            },
                            {
                                label = "Supprimer un cone",
                                onSelected = function()
                                    DeleteCone()
                                end
                            },
                            {
                                label = "Supprimer une barriere",
                                onSelected = function()
                                    DeleteBarrier()
                                end
                            }
                        },
                        submenu = {}
                    }
                },
                ["Informations effectifs"] = {
                    submenu = "police_menuperso",
                    title = "Effectifs",
                    menus = {
                        buttons = {
                            {
                                label = "Agents LSPD en service",
                                onSelected = function()
                                    TriggerServerEvent("service:showOnDuty", "police")
                                end
                            },
                            {
                                label = "[COOP] Sherifs en service",
                                onSelected = function()
                                    TriggerServerEvent("service:showOnDuty", "lssd")
                                end
                            }
                        },
                        submenus = {}
                    }
                },
                ["Action renforts"] = {
                    submenu = "police_menuperso",
                    title = "Renforts",
                    menus = {
                        buttons = {
                            {
                                label = "Renforts",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "police",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~2 \n~b~Importance : ~s~Légère"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            },
                            {
                                label = "Renforts ~o~important",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "police",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~3 \n~b~Importance : ~o~Importante"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            },
                            {
                                label = "Renforts ~r~~h~urgent",
                                onSelected = function()
                                    local plyCoords = GetEntityCoords(PlayerPedId())
                                    local x, y, z = table.unpack(plyCoords)
                                    TriggerServerEvent(
                                        "call:makeCall",
                                        "police",
                                        {x = x, y = y, z = z},
                                        "Besoin de renforts\n~b~Code : ~s~99 \n~b~Importance : ~r~~h~URGENTE"
                                    )
                                end,
                                ActiveFct = function()
                                end
                            }
                        },
                        submenu = {}
                    }
                }
            },
            buttons = {
                -- {label="Activer/Désactiver le tracking",onSelected=function()
                --     Police.ActivateTrack()
                -- end},
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Annuler l'appel en cours",
                    onSelected = function()
                        TriggerEvent("call:cancelCall")
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = 440.87, y = -995.98, z = 29.68},
                Limit = 99999999,
                Name = "coffre"
            },
            {
                Pos = {x = 437.05, y = -990.79, z = 29.69},
                Limit = 99999999,
                Name = "coffre des saisies"
            }
        },
        work = {
            vestiaire = {
                type = "Vestiaire",
                workSize = 1.45,
                Pos = {x = 452.34, y = -992.11, z = 30.69},
                vestiaire = {
                    type = "Vestiaire",
                    workSize = 1.45,
                    Pos = {x = 452.34, y = -992.11, z = 30.69},
                    Tenues = TenueLSPD
                }
            }
        }
    },
    merryweather = {
        label = "👁‍🗨 Merry Weather",
        label2 = "Merry Weather",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage Merry Weather",
            Pos = {x = 486.78, y = -3153.63, z = 5.07},
            Properties = {
                type = 3,
                Limit = 64,
                zonesize = 1.0,
                vehicles = {},
                spawnpos = {x = 486.78, y = -3153.63, z = 5.07, h = 0.11}
            },
            Blipdata = {
                Pos = {x = 486.78, y = -3153.63, z = 5.07},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Menu = {
            menu = {
                title = "Merry Weather",
                subtitle = "Actions disponibles",
                name = "merryweather_menuperso"
            },
            buttons = {
                -- {label="Craft",onSelected=function() ToggleCraftMenu() end},
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("merryweather")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        requiredService = false,
        work = {
            recolte = {
                type = "recolte",
                workSize = 10.0,
                Pos = {x = 667.96, y = -2672.78, z = 5.08},
                giveitem = "pellicule",
                blipcolor = 7,
                blipname = "Récupérer pellicules",
                add = "~p~+ 1 Pellicule Photo",
                anim = {
                    lib = "anim@mp_snowball",
                    anim = "pickup_snowball"
                }
            },
            traitement = {
                type = "traitement",
                workSize = 7.45,
                blipcolor = 7,
                blipname = "Développer la photo",
                Pos = {x = 498.72, y = -576.41, z = 24.75},
                required = "pellicule",
                giveitem = "photo",
                add = "~p~+ 1 Photo développer"
            },
            vente = {
                type = "vente",
                blipcolor = 7,
                workSize = 7.45,
                blipname = "Vente",
                Pos = {x = 70.08, y = -727.27, z = 44.22},
                required = "photo",
                price = math.random(10, 12),
                add = "~p~- 1 Photo développer"
            }
        },
        Storage = {
            {
                Pos = {x = 503.71, y = -3121.72, z = 5.07},
                Limit = 100,
                Name = "coffre_merryweather"
            },
            {
                Pos = {x = 563.74, y = -3121.59, z = 17.77},
                Limit = 100,
                Name = "coffre_merryweather2"
            }
        }
    },
    banker = {
        label = "💰 Banquier",
        label2 = "Banquier",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Banquier",
                subtitle = "Actions disponibles",
                name = "Banquier_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("banker")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = 262.56, y = 220.52, z = 100.75},
                Limit = 100,
                Name = "coffre_banque"
            }
        },
        garage = {
            Name = "Garage Banque",
            Pos = {x = 220.31, y = 217.78, z = 105.44},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                    {}
                },
                spawnpos = {x = 220.31, y = 217.78, z = 105.44, h = 337.33}
            },
            Blipdata = {
                Pos = {},
                Blipcolor = 7,
                Blipname = "Garage_banque"
            }
        },
        Extrapos = {
            Banker = {
                Pos = {
                    {x = 249.93, y = 230.25, z = 106.29}
                },
                restricted = {2, 3, 4, 5},
                Enter = function()
                    EnterBankZone()
                end,
                Exit = function()
                    ExitBankZone()
                end,
                zonesize = 1.5,
                Blips = {
                    sprite = 500,
                    color = 69,
                    name = "Gestion comptes"
                },
                Marker = {
                    type = 1,
                    scale = {x = 1.5, y = 1.5, z = 0.2},
                    color = {r = 255, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = true
                }
            }
        }
    },
    gouv = {
        label = "Gouvernement",
        label2 = "Gouvernement",
        grade = {
            {
                label = "Agent de Sécurité",
                salary = 230,
                name = "agent",
                show = true
            },
            {
                label = "Juge",
                salary = 430,
                name = "Juge",
                show = true
            },
            {
                label = "Procureur",
                salary = 430,
                name = "drh",
                show = true
            },
            {
                label = "Gouverneur",
                salary = 630,
                name = "boss",
                show = true
            }
        },
        CustomMenu = true,
        Storage = {
            {
                Pos = {x = -549.16, y = -205.29, z = 46.51},
                Limit = 100,
                Name = "coffre_gouv"
            }
        },
        Menu = {
            menu = {
                title = "Gouvernement",
                subtitle = "Actions disponibles",
                name = "Gouvernement_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("gouvernement")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = -549.16, y = -205.29, z = 46.51},
                Limit = 100,
                Name = "coffre_gouvernement"
            }
        },
        garage = {
            Name = "Garage gouvernement",
            Pos = {x = -549.45, y = -158.33, z = 38.25},
            Properties = {
                type = 2,
                Limit = 10,
                vehicles = {
                    {
                        name = "baller6",
                        label = "Baller Blindé",
                        job = true,
                        tuning = {
                            modXenon = true,
                            modTurbo = true,
                            modEngine = 3,
                            modBrakes = 3,
                            modTransmission = 3,
                            modSuspension = 3,
                            modArmor = 3,
                            modWindows = 3
                        }
                    },
                    {
                        name = "fbi2",
                        label = "SUV FBI",
                        job = true,
                        tuning = {
                            modXenon = true,
                            modTurbo = true,
                            modEngine = 4,
                            modBrakes = 4,
                            modTransmission = 4,
                            modSuspension = 4,
                            modArmor = 4,
                            modWindows = 4
                        }
                    }
                },
                spawnpos = {x = -558.6, y = -162.17, z = 38.16, h = 292.43}
            },
            Blipdata = {
                Pos = {},
                Blipcolor = 7,
                Blipname = "Garage"
            }
        }
    },
    ponsonbys = {
        label = "💼 Ponsonbys",
        label2 = "Ponsonbys",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Storage = {
            {
                Pos = {x = -704.32, y = -159.78, z = 36.42},
                Limit = 100,
                Name = "coffre_ponsonbys"
            }
        },
        Menu = {
            menu = {
                title = "Ponsonbys",
                subtitle = "Action",
                name = "ponsonbys_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("ponsonbys")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Création tenue",
                    onSelected = function()
                        for i = 1, 10, 1 do
                            Wait(1)
                            RageUI.GoBack()
                        end
                        RageUI.Visible(RMenu:Get("ponsonbys", "main"), true)
                    end
                }
            }
        },
        extraPos = {
            Manequin = {
                Pos = {
                    {x = -168.4, y = -298.3, z = 39.79}
                }
            }
        }
    },
    lsms = {
        label = "💉 LSMS",
        label2 = "LSMS",
        grade = {
            {
                label = "Ambulancier",
                salary = 220,
                name = "ambulancier",
                show = true
            },
            {
                label = "Infirmier",
                salary = 240,
                name = "infirmier",
                show = true
            },
            {
                label = "Médecin",
                salary = 260,
                name = "medecin",
                show = true
            },
            {
                label = "Directeur adjoint",
                salary = 290,
                name = "drh",
                show = true
            },
            {
                label = "Directeur",
                salary = 330,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage LSMS Los Santos",
            Pos = {x = 342.79, y = -559.77, z = 28.74},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 342.79, y = -559.77, z = 28.74, h = 346.54}
            },
            Blipdata = {
                Pos = {x = 342.79, y = -559.77, z = 28.74},
                Blipcolor = 7,
                Blipname = "Garage Los Santos"
            }
        },
        Storage = {
            -- Los Santos
            {
                Pos = {x = 353.76, y = -578.14, z = 27.79},
                Limit = 100,
                Name = "Coffre LSMS"
            }
        },
        garage3 = {
            Name = "Helipad Hopital",
            Pos = {x = 336.39, y = -623.8, z = 29.29},
            Properties = {
                type = 2,
                Limit = 10,
                zonesize = 1.5,
                vehicles = {
                    {
                        name = "medevac",
                        label = "Helicoptere de secours",
                        job = true,
                        tuning = {
                            modXenon = false,
                            modLivery = 0
                        }
                    }
                },
                spawnpos = {x = 336.39, y = -623.8, z = 29.29, h = 256.26}
            },
            Blipdata = {
                Pos = {x = 336.39, y = -623.8, z = 29.29},
                Blipcolor = 5,
                Blipname = "Helipad Hopital"
            }
        },
        Menu = {
            menu = {
                title = "Ambulance",
                subtitle = "Actions disponibles",
                name = "ambulance_menuperso"
            },
            buttons = {
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("lsms")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Réanimation",
                    onSelected = function()
                        Ambulance.Revive()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Petite blessure",
                    onSelected = function()
                        Ambulance.Heal(25)
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Blessure grave",
                    onSelected = function()
                        Ambulance.Heal(200)
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Mettre dans le véhicule",
                    onSelected = function()
                        Police.PutInVeh()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Sortir du véhicule",
                    onSelected = function()
                        Police.SortirVeh()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Annuler l'appel en cours",
                    onSelected = function()
                        TriggerEvent("call:cancelCall")
                    end
                }
            }
        },
        work = {
            vestiaire = {
                type = "Vestiaire",
                workSize = 1.45,
                Pos = {x = 335.81, y = -580.13, z = 27.79},
                Tenues = {
                    ["Tenue ambulancier"] = {
                        male = {
                            ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                            ['torso_1'] = 250, ['torso_2'] = 0,
                            ['decals_1'] = 58, ['decals_2'] = 0,
                            ['arms'] = 85,
                            ['pants_1'] = 96, ['pants_2'] = 0,
                            ['shoes_1'] = 69, ['shoes_2'] = 0,
                            ['helmet_1'] = -1, ['helmet_2'] = 0,
                            ['chain_1'] = 126, ['chain_2'] = 0,
                            ['ears_1'] = 0, ['ears_2'] = 0
                        },
                        female = {
                            ['tshirt_1'] = 58, ['tshirt_2'] = 0,
                            ['torso_1'] = 258, ['torso_2'] = 0,
                            ['decals_1'] = 66, ['decals_2'] = 0,
                            ['arms'] = 109,
                            ['pants_1'] = 99, ['pants_2'] = 0,
                            ['shoes_1'] = 72, ['shoes_2'] = 0,
                            ['helmet_1'] = 0, ['helmet_2'] = 0,
                            ['chain_1'] = 96, ['chain_2'] = 0,
                            ['ears_1'] = 0, ['ears_2'] = 0,

                        }
                    }
                }
            }
        }
    },
    mecano = {
        label = "🔧 Mécano Sud",
        label2 = "Mécano Sud",
        grade = {
            {
                label = "CDD",
                salary = 120,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 130,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 150,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 170,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 220,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage Mécano",
            Pos = {x = -184.18, y = -1319.28, z = 31.3},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -184.18, y = -1319.28, z = 30.3, h = 0.15}
            },
            Blipdata = {
                Pos = {x = -184.18, y = -1319.28, z = 30.3},
                Blipcolor = 5,
                Blipname = "Garage"
            }
        },
        Menu = {
            menu = {
                title = "Mécano",
                subtitle = "Actions disponibles",
                name = "mecano_menuperso"
            },
            submenus = {
                ["Actions véhicule"] = {
                    submenu = "mecano_menuperso",
                    title = "Actions véhicule",
                    menus = {
                        buttons = {
                            {
                                label = "Inspecter l'état du véhicule",
                                onSelected = function()
                                    Mecano.CheckVehicle()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Ouvrir le capot",
                                onSelected = function()
                                    Mecano.OpenTrunk()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Réparer",
                                onSelected = function()
                                    Mecano.Repair()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Nettoyer",
                                onSelected = function()
                                    Mecano.CleanVehicule()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            },
                            {
                                label = "Mise en fourière",
                                onSelected = function()
                                    Mecano.Fouriere()
                                end,
                                ActiveFct = function()
                                    Mecano.ShowMarker()
                                end
                            }
                        },
                        submenus = {}
                    }
                }
            },
            buttons = {
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                },
                {
                    label = "Facturation",
                    onSelected = function()
                        CreateFacture("mecano")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annuler l'appel en cours",
                    onSelected = function()
                        TriggerEvent("call:cancelCall")
                    end
                }
            }
        },
        Extrapos = {
            Tow = {
                Pos = {
                    {x = -191.04, y = -1290.11, z = 31.3}
                },
                Enter = EnterZoneTow,
                Exit = ExitZoneTow,
                zonesize = 5.5,
                Blips = {
                    sprite = 473,
                    color = 81,
                    name = "Fourrière"
                },
                Marker = {
                    type = 1,
                    scale = {x = 1.5, y = 1.5, z = 0.6},
                    color = {r = 100, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = true
                }
            },
            LSCustoms = {
                Pos = {
                    {x = -233.84, y = -1317.02, z = 30.3},
                    {x = -237.3, y = -1337.92, z = 30.3},
                    {x = -210.77, y = -1323.3, z = 30.89}
                },
                Enter = function()
                    EnterZoneLSC()
                end,
                Exit = function()
                    ExitZoneLSC()
                end,
                zonesize = 3.5,
                Blips = {},
                Marker = {
                    type = 1,
                    scale = {x = 4.5, y = 4.5, z = 0.6},
                    color = {r = 100, g = 255, b = 255, a = 120},
                    Up = false,
                    Cam = false,
                    Rotate = false,
                    visible = false
                }
            }
        },
        Storage = {
            {
                Pos = {x = -196.72, y = -1315.6, z = 30.09},
                Limit = 100,
                Name = "coffre_mecano"
            }
        },
        work = {
            vestiaire = {
                type = "Vestiaire",
                workSize = 1.45,
                Pos = {x = -206.99, y = -1341.54, z = 34.89},
                Tenues = {
                    ['Tenue de services'] = {
                        male = {
                            ['tshirt_1'] = 15, ['tshirt_2'] = 0,
                            ['torso_1'] = 65, ['torso_2'] = 0,
                            ['decals_1'] = 0, ['decals_2'] = 0,
                            ['arms'] = 17,
                            ['pants_1'] = 38, ['pants_2'] = 0,
                            ['shoes_1'] = 25, ['shoes_2'] = 0,
                            ['helmet_1'] = 0, ['helmet_2'] = 0,
                            ['chain_1'] = 0, ['chain_2'] = 0,
                            ['ears_1'] = 0, ['ears_2'] = 0
                        },
                        female = {
                            ['tshirt_1'] = 14, ['tshirt_2'] = 0,
                            ['torso_1'] = 59, ['torso_2'] = 0,
                            ['decals_1'] = 0, ['decals_2'] = 0,
                            ['arms'] = 18,
                            ['pants_1'] = 38, ['pants_2'] = 0,
                            ['shoes_1'] = 25, ['shoes_2'] = 0,
                            ['helmet_1'] = 0, ['helmet_2'] = 0,
                            ['chain_1'] = 0, ['chain_2'] = 0,
                            ['ears_1'] = 0, ['ears_2'] = 0
                        }
                    }
                }
            },
        },
    },
    -- ltd = {
    --     label = "🍕 Épicier",
    --     label2 = "Épicier",
    --     grade = {
    --         {
    --             label = "Employé",
    --             salary = 20,
    --             name = "employe",
    --             show = true
    --         },
    --         {
    --             label = "Trésorier",
    --             salary = 20,
    --             name = "tresorier",
    --             show = true
    --         },
    --         {
    --             label = "DRH",
    --             salary = 20,
    --             name = "drh",
    --             show = true
    --         },
    --         {
    --             label = "PDG",
    --             salary = 20,
    --             name = "boss",
    --             show = true
    --         }
    --     },
    --     garage = {
    --         Name = "Garage épicier",
    --         Pos =  {x = -40.92,  y = -1747.97,  z =29.33},
    --         Properties = {
    --             type = 2,-- = garage self service
    --             Limit = 10,
    --             vehicles = {
    --                 -- {name="bison",label="Voiture de service",job=true,tuning = {
    --                 --     modXenon = true
    --                 -- }},
    --             },
    --             spawnpos = {x = -38.99,  y = -1745.07,  z =29.33,h=224.97},

    --         },
    --         Blipdata = {
    --             Pos = {x = -40.92,  y = -1747.97,  z =29.33},
    --             Blipcolor  =7,
    --             Blipname = "Garage"
    --         }
    --     },
    --     Menu = {
    --         menu = {
    --             title = "LTD",
    --             subtitle = "Actions disponibles",
    --             name = "LTD_menuperso"
    --         },

    --         buttons = {
    --             {label="Facture",onSelected=function() CreateFacture("ltd") end,ActiveFct=function() HoverPlayer() end},
    --         },
    --     },
    --     Storage = {
    --         {
    --             Pos = {x=-43.38,y=-1748.37,z=29.42},
    --             Limit = 100,
    --             Name = "coffre"
    --         },
    --     },
    --     work = {

    --         traitement = {
    --             type = "traitement",
    --             workSize = 10.45,
    --             blipcolor =51,
    --             blipname = "Déballage batteries",
    --             Pos = {x=2919.98,y=4298.13,z=50.91},
    --             required = "batterypack",
    --             giveitem = "battery",
    --             add = "~b~+ 1  Batterie"
    --         },
    --         traitement2 = {
    --             type = "traitement",
    --             workSize = 10.45,
    --             blipcolor =51,
    --             blipname = "Déballage téléphones",
    --             Pos = {x=2919.98,y=4298.13,z=50.91},
    --             required = "telpack",
    --             giveitem = "tel",
    --             add = "~o~+ 1  Téléphone"
    --         },
    --     }
    -- },

    concess = {
        label = "🚗 Concessionnaire",
        label2 = "Concessionnaire",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Concessionnaire",
                subtitle = "Actions disponibles",
                name = "Concessionnaire_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("concess")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Listes des ventes",
                    onSelected = function()
                        ListesVentes()
                    end
                },
                {
                    label = "Rentrer véhicule",
                    onSelected = function()
                        RentrerVeh()
                    end
                },
                {
                    label = "Créer une clé",
                    onSelected = function()
                        Clef()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Créer une carte grise",
                    onSelected = function()
                        CarteGrise()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        garage = {
            Name = "Garage Concessionnaire",
            Pos = {x = -16.07, y = -1103.06, z = 26.67},
            illimity = true,
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -16.07, y = -1103.06, z = 26.67, h = 158.04}
            },
            Blipdata = {
                Pos = {x = -16.07, y = -1103.06, z = 26.67},
                Blipcolor = 5,
                Blipname = "Garage Concessionnaire"
            }
        },
        Storage = {
            {
                Pos = {x = -30.98, y = -1111.19, z = 25.42},
                Limit = 100,
                Name = "coffre PDM"
            }
        }
    },
    --[[
    autoshop = {
        label = "🚗 Concessionnaire Nord",
        label2 = "Concessionnaire Nord",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Concessionnaire",
                subtitle = "Actions disponibles",
                name = "Concessionnaire_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("autoshop")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Listes des ventes",
                    onSelected = function()
                        ListesVentesnord()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Créer une clé",
                    onSelected = function()
                        Clef()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Rentrer véhicule",
                    onSelected = function()
                        RentrerVeh2()
                    end
                },
                {
                    label = "Créer une carte grise",
                    onSelected = function()
                        CarteGrise()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = 1227.15, y = 2737.62, z = 37.03},
                Limit = 100,
                Name = "coffre autoshop"
            }
        },
        garage = {
            Name = "Garage Autoshop",
            Pos = {x = 1215.78, y = 2719.67, z = 38.01},
            illimity = true,
            Properties = {
                type = 3,
                -- = garage societe
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 1215.78, y = 2719.67, z = 38.01, a = 243.75}
            },
            Blipdata = {
                Pos = {x = 1215.78, y = 2719.67, z = 38.01},
                Blipcolor = 7,
                Blipname = "Garage"
            }
        }
    },
    bikershop = {
        label = "🛵 Concessionnaire Moto",
        label2 = "Concessionnaire Moto",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        Menu = {
            menu = {
                title = "Concessionnaire Moto",
                subtitle = "Actions disponibles",
                name = "Concessionnaire_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("bikershop")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Listes des ventes",
                    onSelected = function()
                        ListesVentesmoto()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Créer une clé",
                    onSelected = function()
                        Clef()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Rentrer véhicule",
                    onSelected = function()
                        RentrerVeh3()
                    end
                },
                {
                    label = "Créer une carte grise",
                    onSelected = function()
                        CarteGrise()
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                },
                {
                    label = "Annonce",
                    onSelected = function()
                        local text = KeyboardInput("Texte de l'annonce", nil, 255)
                        if text ~= nil then
                            TriggerPlayerEvent(
                                "RageUI:Popup",
                                -1,
                                {message = "~b~Annonce " .. Jobs[Job:Get().name].label2 .. "\n~s~~h~" .. text}
                            )
                        end
                    end
                }
            }
        },
        Storage = {
            {
                Pos = {x = 1187.36, y = 2636.02, z = 37.4},
                Limit = 100,
                Name = "coffre bikershop"
            }
        },
        garage = {
            Name = "Garage Moto Shop",
            Pos = {x = 1174.54, y = 2638.48, z = 36.76},
            Properties = {
                type = 3,
                -- = garage societe
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 1174.54, y = 2638.48, z = 36.76, h = 351.51}
            },
            Blipdata = {
                Pos = {x = -40.92, y = -1747.97, z = 29.33},
                Blipcolor = 7,
                Blipname = "Garage"
            }
        }
    },
    --]]
    ----------------------------- Début gang

         ballas = {
         label = "🔪Ballas",
         grade = {
             {
                 label = "Ballas",
                 name = "Ballas",
                 show = true
             },
         },

         Storage = {
             {
                 Pos = {x=106.64,y=-1981.36,z=19.98},
                 Limit = 500,
                 Name = "coffre Ballas"
             },
         },

         garage = {
             Name = "Garage Ballas",
             Pos =  {x = 88.71,  y = -1968.28,  z = 20.75},
             Properties = {
                 type = 3,
                 Limit = 10,
                 vehicles = {
                 },
                 spawnpos = {x = 88.71,  y = -1968.28,  z =20.75, h=318.99},

             },
             Blipdata = {
                 Pos = {x = 88.71,  y = -1968.28,  z =20.75},
                 Blipcolor  =7,
                 Blipname = "Garage"
             }
         },
     },
     Jingga = {
        label = "Jingga",
        grade = {
            {
                label = "Jingga",
                name = "Jingga",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=-725.79,y=-863.72,z=25.78},
                Limit = 500,
                Name = "coffre Jingga"
            },
        },

        garage = {
            Name = "Garage Jingga",
            Pos =  {x = -708.39,  y = -880.84,  z = 23.62},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = -708.39,  y = -880.84,  z = 23.62, h=7.8},

            },
            Blipdata = {
                Pos = {x = -708.39,  y = -880.84,  z = 23.62},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },
     marabunta = {
        label = "🔪Mararunta",
        grade = {
            {
                label = "Marabunta",
                name = "Marabunta",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=1439.06,y=-1489.47,z=65.61},
                Limit = 500,
                Name = "coffre Marabunta"
            },
        },

        garage = {
            Name = "Garage Marabunta",
            Pos =  {x = 1422.33,  y = -1504.15,  z = 60.86},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = 1422.33,  y = -1504.15,  z = 60.86, h=151.35},

            },
            Blipdata = {
                Pos = {x = 1422.33,  y = -1504.15,  z = 60.86},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },
     Families = {
        label = "🔪Families",
        grade = {
            {
                label = "Families",
                name = "Families",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=-136.89,y=-1608.59,z=34.03},
                Limit = 500,
                Name = "coffre Families"
            },
        },

        garage = {
            Name = "Garage Families",
            Pos =  {x = -228.63,  y = -1697.07,  z =32.88},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = -228.63,  y = -1697.07,  z =32.88,h=283.16},

            },
            Blipdata = {
                Pos = {x = -228.63,  y = -1697.07,  z =32.88},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },
    vagos = {
        label = "🔪Vagos",
        grade = {
            {
                label = "Vagos",
                name = "Vagos",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=330.24,y=-2013.95,z=21.39},
                Limit = 500,
                Name = "coffre Vagos"
            },
        },

        garage = {
            Name = "Garage Vagos",
            Pos =  {x = 333.93,  y = -2038.31,  z =20.1},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = 333.93,  y = -2038.31,  z =20.1,h=58.37},

            },
            Blipdata = {
                Pos = {x = 333.93,  y = -2038.31,  z =20.1},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },
    sevenblock = {
        label = "🔪7Blocks",
        grade = {
            {
                label = "7Blocks",
                name = "7Blocks",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=-1566.27,y=-231.85,z=48.47},
                Limit = 500,
                Name = "coffre 7Blocks"
            },
        },

        garage = {
            Name = "Garage 7Blocks",
            Pos =  {x = -1565.55,  y = -251.42,  z = 48.28},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = -1565.55,  y = -251.42,  z = 48.28, h=235.08},

            },
            Blipdata = {
                Pos = {x = -1565.55,  y = -251.42,  z = 48.28},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },
    cartelcali = {
        label = "🔪Cartel de Cali",
        grade = {
            {
                label = "Cartel de Cali",
                name = "Cartel de Cali",
                show = true
            },
        },

        Storage = {
            {
                Pos = {x=-1205.03,y=295.41,z=68.72},
                Limit = 500,
                Name = "coffre cartel"
            },
        },

        garage = {
            Name = "Garage cartel",
            Pos =  {x = -1205.93,  y = 269.7,  z = 69.55},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {
                },
                spawnpos = {x = -1205.93,  y = 269.7,  z = 69.55, h=283.58},

            },
            Blipdata = {
                Pos = {x = -1205.93,  y = 269.7,  z = 69.55},
                Blipcolor  =7,
                Blipname = "Garage"
            }
        },
    },



    -----------------------------  Fin Gang

    immo = {
        label = "🏡 Agent Immobilier",
        label2 = "Agent Immobilier",
        grade = {
            {
                label = "CDD",
                salary = 0,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 0,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 0,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 0,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 0,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage Immobilier",
            Pos = {x = -1552.04, y = -578.52, z = 25.31},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = -1552.04, y = -578.52, z = 25.71, h = 300.49}
            },
            Blipdata = {
                Pos = {x = -1552.04, y = -578.52, z = 25.71},
                Blipcolor = 5,
                Blipname = "Garage Immobilier"
            }
        },
        Storage = {
            {
                Pos = {x = -1561.43, y = -572.04, z = 107.52},
                Limit = 100,
                Name = "Coffre Immobilier"
            }
        }
    },
    unicorn = {
        label = "Unicorn",
        label2 = "Unicorn",
        grade = {
            {
                label = "CDD",
                salary = 100,
                name = "cdd",
                show = true
            },
            {
                label = "CDI",
                salary = 120,
                name = "cdi",
                show = true
            },
            {
                label = "Chef",
                salary = 140,
                name = "chef",
                show = true
            },
            {
                label = "DRH",
                salary = 150,
                name = "drh",
                show = true
            },
            {
                label = "PDG",
                salary = 200,
                name = "boss",
                show = true
            }
        },
        garage = {
            Name = "Garage Unicorn",
            Pos = {x = 162.71, y = -1281.98, z = 29.09},
            Properties = {
                type = 3,
                Limit = 10,
                vehicles = {},
                spawnpos = {x = 162.71, y = -1281.98, z = 29.09, h = 144.98}
            },
            Blipdata = {
                Pos = {x = 162.71, y = -1281.98, z = 29.09},
                Blipcolor = 5,
                Blipname = "Garage Unicorn"
            }
        },
        Storage = {
            {
                Pos = {x = 131.47, y = -1285.02, z = 28.27},
                Limit = 500,
                Name = "Frigo Unicorn"
            },
            {
                Pos = {x = 93.21, y = -1291.99, z = 28.27},
                Limit = 500,
                Name = "Coffre Patron"
            }
        },
        Menu = {
            menu = {
                title = "Unicorn",
                subtitle = "Actions disponibles",
                name = "unicorn_menuperso"
            },
            buttons = {
                {
                    label = "Facture",
                    onSelected = function()
                        CreateFacture("unicorn")
                    end,
                    ActiveFct = function()
                        HoverPlayer()
                    end
                }
            }
        }
    },

    taxi = {
        label = "Taxi",
        label2 = "Taxi",
        grade = {
            {
                label = "Chaffeur",
                salary = 100,
                name = "employe",
                show = true
            },
            {
                label = "Manager",
                salary = 115,
                name = "employe2",
                show = true
            },
            {
                label = "Patron",
                salary = 130,
                name = "boss",
                show = true
            },
        },
        Menu = {
            menu = {
                title = "Taxi",
                subtitle = "Actions disponibles",
                name = "taxi_menuperso"
            },

            buttons = {
                {label="Facture",onSelected=function() CreateFacture("taxi") end,ActiveFct=function() HoverPlayer() end},
            },
        },
        Storage = {
            {
                Pos = {x = 895.18, y = -179.26, z = 73.7},
                Limit = 100,
                Name = "Coffre taxi"
            },
        },
        garage = {
        Name = "Garage Taxi",
        Pos =  {x = 900.89,  y = -186.7,  z =73.79},
        workSize = 1.5,
        Properties = {
            type = 2,
            Limit = 6,
            vehicles = {
                {name="taxi",label="Voiture de service",job=true,tuning = {
                    modXenon = false
                }},
                },
                spawnpos = {x = 900.89,  y = -186.7,  z =73.79, h = 329.88},

            },
            Blipdata = {
                Pos = {x = 900.89,  y = -186.7,  z =73.79},
                Blipcolor  =5,
                Blipname = "Garage Taxi"
            }
        },
    },

    -- pecheur = {
    --     label = "Pêcheur",
    --     label2 = "Pêcheur",
    --     FreeAccess = true,
    --     grade = {
    --         {
    --             label = "Pêcheur",
    --             salary = 20,
    --             name = "cdd",
    --             show = true
    --         }
    --     },
    --     requiredService = false,
    --     work = {
    --         recolte = {
    --             type = "recolte",
    --             workSize = 13.0,
    --             Pos = {x=713.56,y=4092.27,z=34.73},
    --             giveitem = "poisson",
    --             blipcolor = 5,
    --             blipname = "Récolte",
    --             add = "~p~+ 1 Poisson",
    --             anim = {

    --                 --lib = "amb@world_human_stand_fishing@idle_a",
    --                 --anim = "idle_a"
    --                 scenario = "WORLD_HUMAN_STAND_FISHING"

    --             },
    --         },
    --         traitement = {
    --             type = "traitement",
    --             workSize = 10.45,
    --             blipcolor = 5,
    --             blipname = "Traitement Poisson",
    --             Pos = {x=-1593.93,y=5192.62,z=4.31},
    --             required = "poisson",
    --             giveitem = "poisson_boite",
    --             RemoveItem = "poisson",
    --             add = "~p~+ 1  Poisson en boite"
    --         },
    --         vente = {
    --             type = "vente",
    --             blipcolor = 5,
    --             workSize = 3.0,
    --             blipname = "Vente",
    --             Pos = {x=-158.08,y=-54.29,z=54.4},
    --             required = "poisson_boite",
    --             price = math.random( 1,2 ),
    --             RemoveItem = "poisson_boite"
    --         },

    --         vestiaire = {
    --             type = "Vestiaire",
    --                workSize = 1.45,
    --                Pos = {x=1301.61,y=4319.27,z=37.2},
    --                Tenues = {
    --                    ['Tenue de pecheur'] = {
    --                        male = {
    --                            ['tshirt_1'] = 15, ['tshirt_2'] = 0,
    --                            ['torso_1'] = 217, ['torso_2'] = 8,
    --                            ['decals_1'] = 0, ['decals_2'] = 0,
    --                            ['arms'] = 1,
    --                            ['pants_1'] = 98, ['pants_2'] = 11,
    --                            ['shoes_1'] = 63, ['shoes_2'] = 1,
    --                            ['helmet_1'] = -1, ['helmet_2'] = 0,
    --                            ['chain_1'] = 0, ['chain_2'] = 0,
    --                            ['ears_1'] = 0, ['ears_2'] = 0
    --                        },
    --                        female = { -- A FAIRE
    --                            ['tshirt_1'] = 58, ['tshirt_2'] = 0,
    --                            ['torso_1'] = 258, ['torso_2'] = 0,
    --                            ['decals_1'] = 66, ['decals_2'] = 0,
    --                            ['arms'] = 109,
    --                            ['pants_1'] = 99, ['pants_2'] = 0,
    --                            ['shoes_1'] = 72, ['shoes_2'] = 0,
    --                            ['helmet_1'] = -1, ['helmet_2'] = 0,
    --                            ['chain_1'] = 96, ['chain_2'] = 0,
    --                            ['ears_1'] = 0, ['ears_2'] = 0,
    --                         }
    --                     }
    --                 }
    --         },
    --     },
    --     garage = {
    --         Name = "Garage Pêcheur",
    --         Pos =  {x = 1293.63,  y = 4330.74,  z =37.49},
    --         workSize = 2,
    --         Properties = {
    --             type = 2,
    --             Limit = 6,
    --             vehicles = {
    --                 {name="Mule3",label="Camion",job=true,tuning = {
    --                     modXenon = false
    --                 }},
    --                 },
    --                 spawnpos = {x = 1293.63,  y = 4330.74,  z =37.49, h = 260.49},

    --             },
    --             Blipdata = {
    --                 Pos = {x = 1293.63,  y = 4330.74,  z =37.49},
    --                 Blipcolor  =5,
    --                 Blipname = "Garage Pêcheur"
    --             }
    --         },

    -- },
}
