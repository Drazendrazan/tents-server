function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 7.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- The color of the outline in rgb, the first value is red, the second value is green, the third value is blue and the last value is alpha. Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 237

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {

}

Config.BoxZones = {
	-- MRPD
    --duty
    ["PDDuty"] = {
        name = "PDDuty",
        coords = vector3(631.73, 8.78, 82.63),
        length = 0.2,
        width = 0.6,
        heading = 330,
        debugPoly = false,
        minZ = 82.43,
        maxZ = 83.03,
        options = {
            {
                type = "client",
                event = "Toggle:Duty",
                icon = "far fa-clipboard",
                label = "Sign In / Out",
                job = "police",
            },
        },
        distance = 1.5
    },
    --bossmenu
	   ["mrpdbossmenu"] = {
        name = "mrpdbossmenu",
        coords = vector3(607.16, 12.58, 82.63),
        length = 0.6,
        width = 0.2,
        heading = 330,
        debugPoly = false,
        minZ = 82.43,
        maxZ = 83.03,
        options = {
            {
                type = "client",
                event = "qb-bossmenu:client:openMenu",
                icon = "far fa-clipboard",
                label = "Boss Menu",
                job = {["police"] = 9,}
            },
        },
        distance = 1.5
    },
    --armory
    ["PDArmory"] = {
        name = "PDArmory",
        coords = vector3(600.66, -19.64, 87.49),
        length = 2.8,
        width = 0.6,
        heading = 340,
        debugPoly = false,
        minZ = 86.49,
        maxZ = 89.09,
        options = {
            {
                type = "client",
                event = "police:openPDArmory",
                icon = "fas fa-shield-alt",
                label = "Police Armory",
                job = "police"
            }
        },
        distance = 1.5
    },
    --stash
    ["mrpdpersonalstash"] = {
        name = "MissionRowPersonalStash",
        coords = vector3(603.93, -18.45, 87.49),
        length = 0.2,
        width = 4.0,
        heading = 340,
        debugPoly = false,
        minZ = 86.89,
        maxZ = 87.69,
        options = {
            {
              type = "client",
              event = "police:client:pstash",
              icon = "fas fa-sign-in-alt",
              label = "Open Personal Stash",
              job = "police",
            },
        },
        distance = 2.5
    },
    --fingerprint
    ["fingerprint"] = {
        name = "fingerprint",
        coords = vector3(595.18, 12.05, 76.63),
        length = 0.6,
        width =  0.6,
        heading = 350,
        debugPoly = false,
        minZ = 76.63,
        maxZ = 77.03,
        options = {
            {
                type = "client",
                event = "police:client:fingerprint",
                icon = "fas fa-fingerprint",
                label = "Fingerprint Station",
                job = "police",
            },
        },
        distance = 1.5
    },

    --Outfit
	["mrpdoutfit"] = {
        name = "mrpdoutfit",
        coords = vector3(623.08, 1.98, 76.63),
        length = 0.2,
        width = 0.8,
        heading = 350,
        debugPoly = false,
        minZ = 76.43,
        maxZ = 77.63,
        options = {
            {
                type = "client",
                event = "qb-clothing:client:openOutfitMenu",
                icon = "fas fa-shield-alt",
                label = "PD Outfit",
                job = "police"
            },
            {
                type = "client",
                event = "nh-context:opendress2",
                icon = "fas fa-shield-alt",
                label = "PD Clothing",
                job = "police"
            },
        },
        distance = 1.5
    },


    --bcso

    ["BCSODuty"] = {
        name = "BCSODuty",
        coords = vector3(1852.80, 3687.80, 34.22),
        length = 0.5,
        width = 0.4,
        heading = 20,
        debugPoly = false,
        minZ = 34.05,
        maxZ = 34.40,
        options = {
            {
                type = "client",
                event = "Toggle:Duty",
                icon = "far fa-clipboard",
                label = "Sign In / Out",
                job = "police",
            },
        },
        distance = 1.5
    },

    ["BCSOArmory"] = {
        name = "BCSOArmory",
        coords = vector3(1861.85, 3688.25, 34.22),
        length = 1.0,
        width = 1.8,
        heading = 30.0,
        debugPoly = false,
        minZ = 34.30,
        maxZ = 35.50,
        options = {
            {
                type = "client",
                event = "police:openPDArmory",
                icon = "fas fa-shield-alt",
                label = "Police Armory",
                job = "police"
            }
        },
        distance = 1.5
    }, 

    ["bcsopersonalstash"] = {
        name = "BlaneCountyPersonalStash",
        coords = vector3(1853.23, 3689.50, 29.82),
        length = 2.80,
        width = 0.50,
        heading = 120.0,
        debugPoly = false,
        minZ = 27.62,
        maxZ = 30.49,
        options = {
            {
              type = "client",
              event = "police:client:pstash",
              icon = "fas fa-sign-in-alt",
              label = "Open Personal Stash",
              job = "police",
            },
        },
        distance = 2.5
    },

    ["BCSOfingerprint"] = {
        name = "BCSOfingerprint",
        coords = vector3(1844.45, 3692.50, 34.19),
        length = 0.4,
        width = 0.4,
        heading = 30.00,
        debugPoly = false,
        minZ = 33.90,
        maxZ = 34.20,
        options = {
            {
                type = "client",
                event = "police:client:fingerprint",
                icon = "fas fa-fingerprint",
                label = "Fingerprint Station",
                job = "police",
            },
        },
        distance = 1.5
    },
 --------/ EMS Stash

    ["EMSstash"] = {
        name = "EMSstash",
        coords = vector3(306.18, -601.94, 43.28),
        length = 0.2,
        width = 1,
        heading = 340,
        debugPoly = false,
        minZ = 42.28,
        maxZ = 44.68,
        options = {
            {
                type = "client",
                event = "hospital:openEMSPersonal",
                icon = "fas fa-shopping-cart",
                label = "Open Personal Stash",
                job = "ambulance",
            }
        },
        distance = 2.5
    },
    -----------Bosmenu
    ["EMSBossMenu"] = {
        name = "EMS-BossMenu",
        coords = vector3(335.84, -594.28, 43.28),
        length = 0.6,
        width = 0.2,
        heading = 345,
        debugPoly = false,
        minZ=43.08,
        maxZ=43.68,
        options = {
            {
                type = "client",
                event = "qb-bossmenu:client:openMenu",
                icon = "far fa-clipboard",
                label = "Boss Menu",
                job = {["ambulance"] = 10,}
            }
        },
        distance = 2.5
    },
     --Outfit
	["EMSpdoutfit"] = {
        name = "EMSpdoutfit",
        coords = vector3(300.2, -597.72, 43.28),
        length = 0.6,
        width = 0.4,
        heading = 5,
        debugPoly = false,
        minZ=42.68,
        maxZ=42.88,
        options = {
            {
                type = "client",
                event = "qb-clothing:client:openOutfitMenu",
                icon = "fas fa-shield-alt",
                label = "EMS Outfit",
                job = "ambulance"
            },
        },
        distance = 1.5
    },

    --Clothing
	["EMSClothing"] = {
        name = "EMSClothing",
        coords = vector3(302.84, -598.45, 43.28),
        length = 0.4,
        width = 0.4,
        heading = 340,
        debugPoly = false,
        minZ = 42.48,
        maxZ = 44.48,
        options = {
            {
                type = "client",
                event = "nh-context:opendress2",
                icon = "fas fa-shield-alt",
                label = "EMS Clothing",
                job = "ambulance"
            },
        },
        distance = 1.5
    },
    ----- Plastic Surgery

     ["surgery"] = {
        name = "surgery",
        coords = vector3(322.62, -572.57, 43.28),
        length = 2.6,
        width = 1,
        heading = 340,
        debugPoly = false,
        minZ = 42.28,
        maxZ = 44.48,
        options = {
            {
                type = "client",
                event = "qb-plastic:surgery",
                icon = "far fa-clipboard",
                label = "Plastic Surgery",
            }
        },
        distance = 1.5
    },
    ----- Checkin

     ["Checkin"] = {
        name = "Checkin",
        coords = vector3(307.54, -595.31, 43.28),
        length = 0.4,
        width = 0.5,
        heading = 65,
        debugPoly = false,
        minZ = 42.88,
        maxZ = 43.28,
        options = {
            {
                type = "client",
                event = "Hospital:CheckIn",
                icon = "far fa-clipboard",
                label = "📋Check In",
            }
        },
        distance = 1.5
    },

    ---hunting plus fishing
    ["fishing"] = {
        name = "fishing",
        coords = vector3(-1593.5, 5197.9, 4.36),
        length = 0.60,
        width = 0.60,
        heading = 55.0,
        debugPoly = false,
        minZ = 4.30,
        maxZ = 4.80,
        options = {
            {
              type = "client",
              event = "crfw:client:buyFishingGear",
              icon = "far fa-fish",
              label = "Fishing Gear",
            },
        },
        distance = 2.0
    },

    ["MechStash"] = {
        name = "MechStash",
        coords = vector3(843.0, -949.2, 26.5),
        length = 1.6,
        width = 2.8,
        heading = 0,
        debugPoly = false,
		minZ = 23.9,
        maxZ = 27.9,
        options = {
            {
                type = "client",
                event = "MechStash",
                icon = "fas fa-archive",
                label = "Mechanic Stash",
                job = "mechanic",
            }
        },
        distance = 2.5
    },
    ["MechanicDuty"] = {
        name = "MechanicDuty",
        coords = vector3(830.35, -932.6, 32.39),
        length = 0.5,
        width = 0.5,
        heading = 0,
        debugPoly = false,
		minZ = 29.59,
        maxZ = 33.59,
        options = {
            {
                type = "client",
                event = "Mech:duty",
                icon = "far fa-clipboard",
                label = "Sign In / Out",
                job = "mechanic",
            }
        },
        distance = 2.5
    },
    -----------Bosmenu
    ["MechanBossMenu"] = {
        name = "MechanBossMenu",
        coords = vector3(834.64, -933.38, 32.39),
        length = 0.5,
        width = 0.5,
        heading = 355,
        debugPoly = false,
        minZ=28.79,
        maxZ=32.79,
        options = {
            {
                type = "client",
                event = "qb-bossmenu:client:openMenu",
                icon = "far fa-clipboard",
                label = "Boss Menu",
                job = {["mechanic"] = 4,}
            }
        },
        distance = 2.5
    },


------/ Jewel Heist  

    ["jewelheist"] = {
        name = "jewelheist",
        coords = vector3(-595.8919, -283.6023, 50.3237),
        length = 1.00,
        width = 1.00,
        heading = 302.7994,
        debugPoly = false,
        minZ = 50.00,
        maxZ = 51.40,
        options = {
            {
              type = "client",
              event = "qb-jewellery:client:startheist",
              icon = "fas fa-gem",
              label = "Disable Cameras",
            },
        },
        distance = 5.0
    },
    ["jewelheistdoor"] = {
        name = "jewelheistdoor",
        coords = vector3(-619.9963, -223.90, 38.3175),
        length = 0.30,
        width = 0.40,
        heading = 38.5005,
        debugPoly = false,
        minZ = 38.50,
        maxZ = 38.80,
        options = {
            {
              type = "client",
              event = "qb-jewellery:client:UsePinkCard",
              icon = "fas fa-id-card-alt",
              label = "Disable Doors",
            },
        },
        distance = 5.0
    },
    -----------GarbageJob
    ["Garbagebus-Return"] = {
        name = "Garbagebus-Return",
        coords = vector3(-334.11, -1565.61, 24.95),
        length = 4.4,
        width = 11.4,
        heading = 330,
        debugPoly = false,
        minZ = 24.15,
        maxZ = 28.15,
        options = {
            {
              type = "client",
              event = "garbage:returnTruck",
              icon = "fas fa-shopping-cart",
              label = "Return GarbageBus",
            },
        },
        distance = 5.0
    },
    ---------Trucker
    ["Trucker"] = {
        name = "Trucker",
        coords = vector3(-552.49, 5347.43, 74.74),
        length = 0.8,
        width = 0.4,
        heading = 340,
        debugPoly = false,
        minZ=74.94,
        maxZ=75.94,
        options = {
            {
              type = "client",
              event = "GG:Trucker",
              icon = "fas fa-shopping-cart",
              label = "Start Tracker",
              job = "trucker",
            },
        },
        distance = 5.0
    },
    ---------RepairStation
    ["RepairStation"] = {
        name = "RepairStation",
        coords = vector3(532.4, -176.82, 54.22),
        length = 6.4,
        width = 9.2,
        heading = 5,
        debugPoly = false,
        minZ=53.22,
        maxZ=57.22,
        options = {
            {
              type = "client",
              event = "khrp:fixCarS",
              icon = "fas fa-car",
              label = "Repair Vehicle",
            },
        },
        distance = 5.0
    },
    ---------HotDogStartJob
    ["HotDogStartJob"] = {
        name = "HotDogStartJob",
        coords = vector3(49.22, -1000.63, 29.34),
        length = 0.8,
        width = 1.4,
        heading = 340,
        debugPoly = false,
        minZ=28.34,
        maxZ=30.94,
        options = {
            {
              type = "client",
              event = "GG-Hotdog:Start",
              icon = "fas fa-car",
              label = "Start Hotdog",
              job = 'hotdog'
            },
            {
                type = "client",
                event = "GG-Hotdog:stop",
                icon = "fas fa-car",
                label = "Stop Hotdog",
                job = 'hotdog'
            },
        },
        distance = 5.0
    },
}

Config.PolyZones = {

}

Config.TargetBones = {
    ["bones"] = {
        bones = {
            'boot', 
            'rudder', 
            'rudder2', 
            'petrolcap', 
            'petroltank', 
            'petroltank_l', 
            'petroltank_r',
        },
        options = {
      {
        type = "client",
        event = "sjrp-fuel:client:SendMenuToServer",
        icon = "fas fa-gas-pump",
        label = "Refuel Vehicle",
      },
        },
          distance = 1.0
    },

    -- cars refule
    ["main"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
      { 
        type = "client",
        event = "sjrp-fuel:client:SendMenuToServer",
        icon = "fas fa-gas-pump",
        label = "Refuel Vehicle",
      },
        },
          distance = 1.0
    },
    -- flipcar
    ["caroptions"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r",
            "chassis"
        },
        options = {
       {
        type = "client",
        event = "vehiclekeys:client:GiveKeys",
        parameters = {},
        icon = "fas fa-key",
        label = "Give Key",
       },
       {
        type = "client",
        event = "police:client:PutPlayerInVehicle",
        icon = "fas fa-chevron-circle-left",
        label = "PLACE IN VEHICLE",
       },
       {
        type = "client",
        event = "police:client:SetPlayerOutVehicle",
        icon = "fas fa-chevron-circle-right",
        label = "TAKE OUT OF VEHICLE",
       },
       {
        type = "client",
        event = "police:client:ImpoundVehicle",
        icon = "fas fa-car",
        label = "IMPOUND VEHICLE",
        job = 'police'
       },
       {
        type = "client",
        event = "qb-trunk:client:GetIn",
        icon = "fas fa-user-secret",
        label = "GET IN TRUNK",
       },
       {
        type = "client",
        event = "vehicle:flipit",
        parameters = {},
        icon = "fas fa-car-crash",
        label = "Flip Vehicle",
       },
        },
          distance = 1.0
    },

    -----------Legacy Fuel
    ["fuel"] = {
        models = {
            'boot', 
            'rudder', 
            'rudder2', 
            'petrolcap', 
            'petroltank', 
            'petroltank_l', 
            'petroltank_r',
        },
        options = {
            {
                type = "client",
                event = "crfw-fuel:client:fuel",
                icon = "fas fa-gas-pump",
                label = "Refuel Car",
            },
            {
                type = "client",
                event = "crfw-fuel:client:fuelcan",
                icon = "fas fa-burn",
                label = "Buy Jerry Can",
            },
    },
    distance = 2.5
    }, 

}

Config.PolyZones = {

}

Config.TargetBones = {
    ["bones"] = {
        bones = {
            'boot', 
            'rudder', 
            'rudder2', 
            'petrolcap', 
            'petroltank', 
            'petroltank_l', 
            'petroltank_r',
        },
        options = {
      {
        type = "client",
        event = "sjrp-fuel:client:SendMenuToServer",
        icon = "fas fa-gas-pump",
        label = "Refuel Vehicle",
      },
        },
          distance = 1.0
    },

    -- cars refule
    ["main"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r"
        },
        options = {
      { 
        type = "client",
        event = "sjrp-fuel:client:SendMenuToServer",
        icon = "fas fa-gas-pump",
        label = "Refuel Vehicle",
      },
        },
          distance = 1.0
    },
    -- flipcar
    ["caroptions"] = {
        bones = {
            "door_dside_f",
            "door_dside_r",
            "door_pside_f",
            "door_pside_r",
            "chassis"
        },
        options = {
       {
        type = "client",
        event = "vehiclekeys:client:GiveKeys",
        parameters = {},
        icon = "fas fa-key",
        label = "Give Key",
       },
       {
        type = "client",
        event = "police:client:PutPlayerInVehicle",
        icon = "fas fa-chevron-circle-left",
        label = "PLACE IN VEHICLE",
       },
       {
        type = "client",
        event = "police:client:SetPlayerOutVehicle",
        icon = "fas fa-chevron-circle-right",
        label = "TAKE OUT OF VEHICLE",
       },
       {
        type = "client",
        event = "police:client:ImpoundVehicle",
        icon = "fas fa-car",
        label = "IMPOUND VEHICLE",
        job = 'police'
       },
       {
        type = "client",
        event = "qb-trunk:client:GetIn",
        icon = "fas fa-user-secret",
        label = "GET IN TRUNK",
       },
       {
        type = "client",
        event = "vehicle:flipit",
        parameters = {},
        icon = "fas fa-car-crash",
        label = "Flip Vehicle",
       },
        },
          distance = 1.0
    },

    -----------Legacy Fuel
    ["fuel"] = {
        models = {
            'boot', 
            'rudder', 
            'rudder2', 
            'petrolcap', 
            'petroltank', 
            'petroltank_l', 
            'petroltank_r',
        },
        options = {
            {
                type = "client",
                event = "crfw-fuel:client:fuel",
                icon = "fas fa-gas-pump",
                label = "Refuel Car",
            },
            {
                type = "client",
                event = "crfw-fuel:client:fuelcan",
                icon = "fas fa-burn",
                label = "Buy Jerry Can",
            },
    },
    distance = 2.5
    }, 

}

Config.TargetModels = {
    ---rental
    ["VehicleRental"] = {
        models = {
            `a_f_y_runner_01`,
        },
        options = {
            {
                type = "client",
                event = "qb-rental:openMenu",
                icon = "fas fa-car",
                label = "Rent Vehicle",
            },
        },
        distance = 4.0
    },
  
  -- jewellery rob
  ["jewelboxes"] = {
	models = {
		`des_jewel_cab3_start`,
		`des_jewel_cab2_start`,
		`des_jewel_cab_start`,
		`des_jewel_cab4_start`,

	},
	options = {
		{
			type = "client",
			event = "qb-jewellery:client:startbreakinglass",
			icon = "fas fa-gem",
			label = "Break Glass",
		},
	},
	distance = 4.0
},

----- ATM Menu

-- ["atms"] = {        
-- 	models = {            
-- 		'prop_atm_01',            
-- 		'prop_atm_02',            
-- 		'prop_atm_03',            
-- 		'prop_fleeca_atm',        
-- 	},        
-- 	options = {            
-- 		{                
-- 			  type = "command",                
-- 			  event = "atm",                
-- 			  icon = "fas fa-credit-card",                
-- 			  label = "Insert Card",            
-- 		},        
-- 	},        
-- 	distance = 1.0    
-- },

    --------- Blackmarket
    ["blackmarket"] = {
        models = {
            "g_m_m_chicold_01",
        },
        options = {
            {
                type = "client",
                event = "market:client:SellMenu",
                icon = "fas fa-theater-masks",
                label = "blackmarket",
            },
        },
        distance = 2.0
    },

    --- uwu ---
    ["uwu"] = {
		models = {
			"A_C_Cat_01"
		},
		options = {
			{
				type = "client",
				event = "qb-shops:marketshop",
				icon = "fas fa-shopping-basket",
				label = "Open Shop",
			},
		},
		distance = 4.0
	},


    --degitalden
    ["degitalden"] = {
        models = {
            'ig_lifeinvad_01',
        },
        options = {
            {
                type = "client", 
                event = "qb-shops:marketshop",
                icon = 'fas fa-laptop', 
                label = 'Want to be a tech expart?',

            },
        },
        distance = 2.0
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {

}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
    options = {
        {
            type = "client",
            event = "qb-phone:client:GiveContactDetails",
            icon = "fas fa-address-book",
            label = "Give Contact Details",
        },
        {
            event = "police:client:RobPlayer",
            icon = "fas fa-user-secret",
            label = "Rob Player",
        },
        {
            type = "client",
            event = "police:client:CuffPlayer",
            icon = "fas fa-hands",
            label = "Cuff / Uncuff",
            job = "police",
            item = 'handcuffs',
        },
        {
          type = "client",
          event = "police:client:EscortPlayer",
          icon = "fas fa-key",
          label = "Escort",
        },
        {
            type = "client",
            event = "police:client:PutPlayerInVehicle",
            icon = "fas fa-chevron-circle-left",
            job = 'police',
            label = "Place in Vehicle",
        },
        {
            type = "client",
            event = "police:client:SetPlayerOutVehicle",
            icon = "fas fa-chevron-circle-right",
            job = 'police',
            label = "Take out of Vehicle",
        },
    }
}

Config.Peds = {

	---Grandma 

   ["grandma"] = {
	   model = "ig_mrs_thornhill",
	   coords = vector4(1443.43, 6333.52, 23.88, 83.82),
	   minusOne = true,
	   freeze = true,
	   invincible = true,
	   blockevents = true,
	   target = {
		   options = {
			   {
				   type = "client",
				   event = "grandma:client:healing",
				   icon = "fas fa-band-aid",
				   label = "Request Healing For 1200$",
			   },
		   },
		   distance = 1.5,
	   },
	   currentpednumber = 0,
   },
   ["GarbagePed"] = {
	   model = 's_m_y_garbage', 
	   coords = vector4(-349.96, -1569.92, 25.22, 296.46),
	   minusOne = true, 
	   freeze = true, 
	   invincible = true, 
	   blockevents = true,
	   target = { 
		   options = {
			  {
				type = "server",
				event = "garbage:server:getGarbageJob",
				icon = "fas fa-sign-in-alt",
				label = "Get Garbage Job",
			   },
			  {
				type = "client",
				event = "garbage:getTruck",
				icon = "fas fa-sign-in-alt",
				label = "Get Garbage Truck",
			   },
			  {
				type = "server",
				event = "garbagejob:server:PayShift",
				icon = "fas fa-sign-in-alt",
				label = "Collect Pay Check",
			   },
		   },
		   distance = 1.5,
	   },
   },
   --Hunting
   ["Hunting"] = {
	   model = "cs_hunter",
	   coords = vector4(-679.72, 5839.01, 17.33, 226.23),
	   minusOne = true, 
	   freeze = true, 
	   invincible = true, 
	   blockevents = true,
	   target = {
		   options = {
			   {
				   event = "qb-hunting:client:interactionEvent",
				   icon = "fas fa-circle",
				   label = "Buy Gear"
			   },
			   {
				   event = "SJRP-HuntingSell",
				   icon = "fas fa-circle",
				   label = "Sell meats"
			   }
		   }, 
		   distnace = 2.0
	   },
   },
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	local state = GetResourceState('qb-core')
	if state ~= 'missing' then
		if state ~= 'started' then
			local timeout = 0
			repeat
				timeout += 1
				Wait(0)
			until GetResourceState('qb-core') == 'started' or timeout > 100
		end
		Config.Standalone = false
	end
	if Config.Standalone then
		local firstSpawn = false
		local event = AddEventHandler('playerSpawned', function()
			SpawnPeds()
			firstSpawn = true
		end)
		-- Remove event after it has been triggered
		while true do
			if firstSpawn then
				RemoveEventHandler(event)
				break
			end
			Wait(1000)
		end
	else
		local QBCore = exports['qb-core']:GetCoreObject()
		local PlayerData = QBCore.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
			PlayerData = QBCore.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end