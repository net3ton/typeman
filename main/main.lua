local Main = {}

Main.version = 0
Main.pool = {}
Main.rotation = 0
Main.offset = 0

function Main.inc_version()
	Main.version = Main.version + 1
end

function Main.add_new_command(cmdhash)
	Main.pool[cmdhash] = true
end

function Main.has_command(cmd)
	return Main.pool[hash(cmd)]
end

function Main.go_to_ver1()
	Main.add_new_command(hash("jump"))
	Main.add_new_command(hash("turn"))
	Main.add_new_command(hash("getdoor"))
end

function Main.get_command_name(cmdhash)
	if cmdhash == hash("jump") then
		return "jump"
	elseif cmdhash == hash("turn") then
		return "turn"
	elseif cmdhash == hash("getdoor") then
		return "get my door back"
	elseif cmdhash == hash("killboss") then
		return "finish him or her"
	--elseif self.command == hash("win") then
	--	return "win this awesome game"
	end

	return "jump"
end

return Main
