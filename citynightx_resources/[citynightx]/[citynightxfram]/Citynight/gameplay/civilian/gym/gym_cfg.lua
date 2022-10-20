ConfigGym = {}

ConfigGym.Exercises = {
    ["Pompes"] = {
        ["idleDict"] = "amb@world_human_push_ups@male@idle_a",
        ["idleAnim"] = "idle_c",
        ["actionDict"] = "amb@world_human_push_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 1100,
        ["enterDict"] = "amb@world_human_push_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 3050,
        ["exitDict"] = "amb@world_human_push_ups@male@exit",
        ["exitAnim"] = "exit",
        ["exitTime"] = 3400,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 3
    },
    ["Abdos"] = {
        ["idleDict"] = "amb@world_human_sit_ups@male@idle_a",
        ["idleAnim"] = "idle_a",
        ["actionDict"] = "amb@world_human_sit_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 3400,
        ["enterDict"] = "amb@world_human_sit_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 4200,
        ["exitDict"] = "amb@world_human_sit_ups@male@exit",
        ["exitAnim"] = "exit",
        ["exitTime"] = 3700,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 10
    },
    ["Tractions"] = {
        ["idleDict"] = "amb@prop_human_muscle_chin_ups@male@idle_a",
        ["idleAnim"] = "idle_a",
        ["actionDict"] = "amb@prop_human_muscle_chin_ups@male@base",
        ["actionAnim"] = "base",
        ["actionTime"] = 3000,
        ["enterDict"] = "amb@prop_human_muscle_chin_ups@male@enter",
        ["enterAnim"] = "enter",
        ["enterTime"] = 1600,
        ["exitDict"] = "amb@prop_human_muscle_chin_ups@male@exit",
        ["exitAnim"] = "exit",
        ["exitTime"] = 3700,
        ["actionProcent"] = 1,
        ["actionProcentTimes"] = 10
    }
}

ConfigGym.Locations = {
    -- REMINDER. If you want it to set coords+heading then enter heading, else put nil ( ["h"] )
    {["x"] = -1200.08, ["y"] = -1571.15, ["z"] = 4.6115 - 0.98, ["h"] = 214.37, ["exercise"] = "Tractions"},
    {
        ["x"] = -1205.0118408203,
        ["y"] = -1560.0671386719,
        ["z"] = 4.614236831665 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Abdos"
    },
    {
        ["x"] = -1203.3094482422,
        ["y"] = -1570.6759033203,
        ["z"] = 4.6079330444336 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Pompes"
    },
    {
        ["x"] = 1639.62,
        ["y"] = 2526.64,
        ["z"] = 45.56 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Pompes"
    },
    {
        ["x"] = -1110.44,
        ["y"] = -837.44,
        ["z"] = 26.85 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Pompes"
    },
    {
        ["x"] = 1647.98,
        ["y"] = 2534.22,
        ["z"] = 45.56 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Abdos"
    },
    {
        ["x"] = -1108.79,
        ["y"] = -836.41,
        ["z"] = 26.85 - 0.98,
        ["h"] = nil,
        ["exercise"] = "Abdos"
    },
    {["x"] = 1643.17, ["y"] = 2528.05, ["z"] = 45.56 - 0.98, ["h"] = 230.43, ["exercise"] = "Tractions"},
    {["x"] = -1104.27, ["y"] = -838.47, ["z"] = 26.83 - 0.98, ["h"] = 128.55, ["exercise"] = "Tractions"},
    {["x"] = -1105.07, ["y"] = -836.99, ["z"] = 26.83 - 0.98, ["h"] = 127.6, ["exercise"] = "Tractions"}

    --{["x"] = -1206.76, ["y"] = -1572.93, ["z"] = 4.61 - 0.98, ["h"] = nil, ["exercise"] = "Pushups"},
    -- ^^ You can add more locations like this
}

ConfigGym.Blips = {
    [1] = {
        ["x"] = -1201.0078125,
        ["y"] = -1568.3903808594,
        ["z"] = 4.6110973358154,
        ["id"] = 311,
        ["color"] = 49,
        ["scale"] = 1.0,
        ["text"] = "The Gym"
    }
}
