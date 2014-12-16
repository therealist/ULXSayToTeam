function ulx.saytohunters( calling_ply, message  )
	
	for k,v in pairs( player.GetAll() ) do
		if team.GetName(v:Team()) == "Hunters" then
			ULib.tsayColor( v, false, team.GetColor(1), "[HUNTERS]: ", team.GetColor(calling_ply:Team()), calling_ply:Nick().. ": ", Color(225,225,225), message )
		else end
	end
	
	ULib.tsay( calling_ply, "You sent to Hunters: " .. message)
	
end
local saytohunters = ulx.command( "Prop Hunt", "ulx saytohunters", ulx.saytohunters, "@h", true, true )
saytohunters:addParam{ type=ULib.cmds.StringArg, hint="message", ULib.cmds.takeRestOfLine }
saytohunters:defaultAccess( ULib.ACCESS_ALL )
saytohunters:help( "Send a message to all players on the Hunters team." )

function ulx.saytoprops( calling_ply, message  )
	
	for k,v in pairs( player.GetAll() ) do
		if team.GetName(v:Team()) == "Props" then
			ULib.tsayColor( v, false, team.GetColor(2), "[PROPS]: ", team.GetColor(calling_ply:Team()), calling_ply:Nick().. ": ", Color(225,225,225), message )
		else end
	end
	
	ULib.tsay( calling_ply, "You sent to Props: " .. message)
	
end
local saytoprops = ulx.command( "Prop Hunt", "ulx saytoprops", ulx.saytoprops, "@p", true, true )
saytoprops:addParam{ type=ULib.cmds.StringArg, hint="message", ULib.cmds.takeRestOfLine }
saytoprops:defaultAccess( ULib.ACCESS_ADMIN )
saytoprops:help( "Send a message to all players on the Props team." )
