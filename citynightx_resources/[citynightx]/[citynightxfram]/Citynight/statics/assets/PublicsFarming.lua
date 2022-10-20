PublicFarm = {
    Weed = {
        recolte = {
            type = "recolte",
            workSize = 1.5,
            Pos = {x=-1373.07,y=-333.27,z=39.03},
            giveitem = "weed_pot",
            blip = "none",
            add = "~p~+ 1 Pot graines cannabis",
            anim = {
  
                lib = "anim@mp_snowball",
                anim = "pickup_snowball"
        
            },
        },
        traitement = {
            type = "traitement",
            workSize = 1.5,
            blip = "none",
            Pos =  {x=-1615.4,y=-820.96,z=10.07},
            required = "weed_plant",
            giveitem = "weed_pooch",
            add = "~p~+ 1 Pochon de cannabis"
        },
    },
    Acide = {
        recolte = {
            type = "recolte",
            workSize = 1.5,
            Pos = {x=2463.01,y=1589.29,z=32.82},
            giveitem = "acidecoke",
            blip = "none",
            add = "~p~+ 1 Acide Sulfurique",
            anim = {
  
                lib = "anim@mp_snowball",
                anim = "pickup_snowball"
        
            },
        },
    },
    Acetone = {
        recolte = {
            type = "recolte",
            workSize = 1.5,
            Pos = {x=114.55,y=-5.65,z=67.81},
            giveitem = "acetone",
            blip = "none",
            add = "~p~+ 1 Acetone",
            anim = {
  
                -- lib = "anim@mp_snowball",
                -- anim = "pickup_snowball"
        
            },
        },
    },
    Cocaine = {
        recolte = {
            type = "recolte",
            workSize = 2.5,
            Pos = {x=-287.68,y=2211.87,z=129.21},
            giveitem = "coke",
            blip = "none",
            add = "~p~+ 1 Coca",
            anim = {
  
                lib = "anim@mp_snowball",
                anim = "pickup_snowball"
        
            },
        },
        traitement = {
            type = "traitement",
            workSize = 1.5,
            blip = "none",
            Pos =  {x=933.21,y=-1151.30,z=24.95},
            required = {
                {name = "coke" , count = 1},
                {name ="acidecoke" , count = 1 },
             },
            giveitem = "coke1",
            add = "~p~+ 1 Pochon de Cocaïne"
        },
    },
    Cueilleur = {
    	recolte = {
    		type = "recolte",
    		workSize = 1.5,
    		Pos = {x=363.24,y=6516.56,z=28.28},
    		giveitem = "pomme",
            -- blip = "none",
            blipcolor =9,
            blipname = "Récolte de Pomme",
    		add = "~p~ +1 Pomme",
    		anim = {
    			lib = "amb@prop_human_movie_bulb@base",
    			anim = "base"
    		},
    	},
    	traitement = {
    		type = "traitement",
    		workSize = 1.5,
            blipcolor =9,
            blipname = "Traitement de Pomme",
    		Pos = {x=460.49,y=3568.85,z=33.24},
    		required = "pomme",
    		giveitem = "jus_pomme",
            RemoveItem = "pomme",
    		add = "~p~ +1 Jus de pomme"
    	},
    	vente = {
    		type = "vente",
    		workSize = 1.5,
    		Pos = {x=1699.13,y=4933.04,z=42.08},
            blipcolor =9,
            blipname = "Vente jus de pomme",
    		required = "jus_pomme",
    		RemoveItem = "jus_pomme",
    		price = math.random( 5,6 ),
    		add = "~p~- 1 Jus de pomme"
    	},
    },
    Meth = {
        recolte = {
            type = "recolte",
            workSize = 1.5,
            Pos = {x=3190.79,y=5269.02,z=23.09},
            giveitem = "ephedrine",
            blip = "none",
            add = "~p~+ 1 Ephedrine",
            anim = {
  
                lib = "anim@mp_snowball",
                anim = "pickup_snowball"
        
            },
        },
        traitement = {
            type = "traitement",
            workSize = 1.5,
            blip = "none",
            Pos =  {x=1181.20,y=-3113.76,z=6.02},
            required = {
                {name = "ephedrine" , count = 1},
                {name ="acetone" , count = 1},
             },
            giveitem = "meth",
            add = "~p~+ 1 Pochon de meth"
        },
    },
    
}


local knockedOut = false
local wait = 15
local count = 60


function ShowNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
