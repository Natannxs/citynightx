fx_version "adamant"
game "gta5"

name "Harybo-radio"
description "Radio by Harybo"
author "Harybo"
version "1.0"

ui_page "index.html"

files {
	"index.html",
	"on.ogg",
	"off.ogg",
}

shared_scripts {
	"config.lua",
}

client_scripts {
	"client.lua",
}

server_scripts {
	"server.lua",
}