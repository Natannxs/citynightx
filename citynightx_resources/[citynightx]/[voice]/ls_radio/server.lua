
TriggerEvent('es:addGroupCommand', 'modifradio', "admin", function(source, args, user)
  if args[3] == "add" or args[3] == "del" then
    TriggerClientEvent('Radio.AddDel', args[1], args[1], args[2], args[3])
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Pas tout les paramètres requis")
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficienct permissions!")
end, {help = "Activer/enlever quelqu'un d'une radio", params = {{name = "IdJoueur", help = "Id du Joueur"}, {name = "Fréquence Radio", help = "Entrez la fréquence"}, {name = "Ajouter/Supprimer", help = "Tapez add ou del"}}})