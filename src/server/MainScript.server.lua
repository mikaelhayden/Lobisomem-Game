--local Module =  require(game.ServerScriptService.Server.DayNight)--
local module =  require(script:WaitForChild('Functions'))

--Module.CicleDay()--------

function startround()
	module.ChooseLobisomem()
	wait()
	module.TPplayers()
end

while wait() do
	wait()
	repeat wait(.5) until game.Players.NumPlayers >=4
	for i = 10,0,-1 do
		print(i)
		wait(i)
	end

	startround()

	for i = 20, 0, -1 do 
		print(i)
		wait(i)
	end
end