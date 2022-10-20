



RegisterNetEvent('askforNumber')
AddEventHandler('askforNumber', function()
	SendNUIMessage({
		action = 'show'
	})
	SetNuiFocus(true, true)
end)
RegisterNUICallback("shwoff",function(data, cb)
	print('okkk')
end)
RegisterNUICallback("validate",function(data, cb)
	local p = nil
	print("okokokok",data)
	TriggerEvent("codeis",data)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	SetNuiFocus(false, false)
	Wait(500)
	SetNuiFocus(false, false)
end)


SetNuiFocus(false, false)

