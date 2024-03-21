local Players = game:GetService("Players")
--local Module =  require(game.ServerScriptService.Server.DayNight)--
local module =  require(script:WaitForChild('Functions'))
local status = game.ReplicatedStorage:WaitForChild('Status')


--Module.CicleDay()--------

function startround()
	module.ChooseLobisomem()
	wait()
	module.TPplayers()
end

function endRound(player)
	for i, v in pairs(game.Players:GetPlayers()) do
		if v:FindFirstChild('LobisomemValue') then
			v.LobisomemValue:Destroy()
		end
	end
	module.TPplayersBack()
end

local time1 = 10
local time2 = 20

while wait() do
	status.Value = '4 Players needed to start a game'

	repeat wait(0.2) until game.Players.NumPlayers >= 1
	for i = time1,0,-1 do
		status.Value = 'Starting in '..i..' seconds '
		wait(1)
	end

	startround()

	for i = time2, 0, -1 do 
		status.Value = i..' seconds left'
		wait(1)
	end

	endRound()
end