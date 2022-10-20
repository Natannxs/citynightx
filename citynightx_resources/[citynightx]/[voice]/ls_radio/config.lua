radioConfig = {
    Controls = {
        Activator = { -- Open/Close Radio
            Name = "INPUT_DROP_AMMO", -- Control name
            Key = 57, -- L
        },
        Secondary = {
            Name = "INPUT_CHARACTER_WHEEL",
            Key = 19, -- Left Shift
            Enabled = false, -- Require secondary to be pressed to open radio with Activator
        },
        Toggle = { -- Toggle radio on/off
            Name = "INPUT_CONTEXT", -- Control name
            Key = 51, -- E
        },
        Increase = { -- Increase Frequency
            Name = "INPUT_CELLPHONE_RIGHT", -- Control name
            Key = 175, -- Right Arrow
            Pressed = false,
        },
        Decrease = { -- Decrease Frequency
            Name = "INPUT_CELLPHONE_LEFT", -- Control name
            Key = 174, -- Left Arrow
            Pressed = false,
        },
        Input = { -- Choose Frequency
            Name = "INPUT_FRONTEND_ACCEPT", -- Control name
            Key = 201, -- Enter
            Pressed = false,
        },
        Broadcast = {
            Name = "INPUT_CELLPHONE_CAMERA_EXPRESSION", -- Control name
            Key = 186, -- Caps Lock
        },
        ToggleClicks = { -- Toggle radio click sounds
            Name = "INPUT_SELECT_WEAPON", -- Control name
            Key = 37, -- Tab
        }
    },
    Frequency = {
        Private = { -- List of private frequencies
            [1] = true, -- Make 1 a private frequency
            [2] = true,
            [3] = true,
            [4] = true,
            [5] = true,
            [6] = true,
            [7] = true,
            [8] = true,
            [9] = true,
            [10] = true,
            [11] = true,
            [12] = true,
            [13] = true,
            [14] = true,
            [15] = true,
            [16] = true,
            [17] = true,
            [18] = true,
            [19] = true,
            [20] = true,
        }, -- List of private frequencies
        Current = 1, -- Don't touch
        CurrentIndex = 1, -- Don't touch
        Min = 1, -- Minimum frequency
        Max = 999, -- Max number of frequencies
        List = {}, -- Frequency list, Don't touch
        Access = {}, -- List of freqencies a player has access to
    },
    AllowRadioWhenClosed = false, -- Allows the radio to be used when not open (uses police radio animation) 
    radioEnabled = true, -- Enable or disable using the radio
    micClicks = true, -- Are clicks enabled or not
    radioClickMaxChannel = 100 -- Set the max amount of radio channels that will have local radio clicks enabled
}

Config = {}
Config.messages = {

    ['not_on_radio'] = "Vous n'êtes actuellement sur aucune radio",
    ['on_radio'] = 'Vous êtes actuellement sur la radio: <b>',
    ['joined_to_radio'] = 'Tu as rejoint la radio: <b>',
    ['restricted_channel_error'] = 'Vous ne pouvez pas rejoindre les chaînes cryptées!',
    ['you_on_radio'] = 'Vous êtes déjà sur la radio: <b>',
    ['you_leave'] = 'Tu as quitté la radio: <b>'
  
  }