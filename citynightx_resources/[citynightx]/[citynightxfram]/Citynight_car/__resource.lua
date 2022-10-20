resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

ui_page "ui/index.html"
files {
    "ui/index.html",
    "ui/assets/clignotant-droite.svg",
    "ui/assets/clignotant-gauche.svg",
    "ui/assets/feu-position.svg",
    "ui/assets/feu-route.svg",
    "ui/assets/fuel.svg",
    "ui/fonts/fonts/Roboto-Bold.ttf",
    "ui/fonts/fonts/Roboto-Regular.ttf",
    "ui/script.js",
    "ui/style.css",
    "ui/debounce.min.js"
}
client_script "cl_car.lua"
client_script "speedo.lua"
client_script "drift.lua"
client_script "chopper_cam/heli_client.lua"
server_script "chopper_cam/heli_server.lua"

client_script "sirene/client.lua"
server_script "sirene/server.lua"
