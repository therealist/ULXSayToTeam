function ulx.saytohunters( calling_ply, message  )
	
	for k,v in pairs( player.GetAll() ) do
		if team.GetName(v:Team()) == "Hunters" then
			ULib.tsayColor( v, false, team.GetColor(1), "[HUNTERS]: " .. message )
		else end
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A sent a message to the Hunters team: " .. message )
	
end
local saytohunters = ulx.command( "Prop Hunt", "ulx saytohunters", ulx.saytohunters, "@h", true, true )
saytohunters:addParam{ type=ULib.cmds.StringArg, hint="message", ULib.cmds.takeRestOfLine }
saytohunters:defaultAccess( ULib.ACCESS_ALL )
saytohunters:help( "Send a message to all players on the Hunters team." )

function ulx.saytoprops( calling_ply, message  )
	
	for k,v in pairs( player.GetAll() ) do
		if team.GetName(v:Team()) == "Props" then
			ULib.tsayColor( v, false, team.GetColor(2), "[PROPS]: " .. message )
		else end
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A sent a message to the Props team: " .. message )
	
end
local saytoprops = ulx.command( "Prop Hunt", "ulx saytoprops", ulx.saytoprops, "@p", true, true )
saytoprops:addParam{ type=ULib.cmds.StringArg, hint="message", ULib.cmds.takeRestOfLine }
saytoprops:defaultAccess( ULib.ACCESS_ADMIN )
saytoprops:help( "Send a message to all players on the Props team." )
