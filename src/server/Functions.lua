--local ReplicatedStorage = game:GetService("ReplicatedStorage")

local module = {}

--[[function module.CicleDay()
    local lighting = game:GetService("Lighting")
    local Clock = lighting.ClockTime

    local DayilightSpeed = 0.0002
    local NightlightSpeed = 0.0002

    while true do
        Clock = lighting.ClockTime
        if Clock > 6 and Clock < 20.02 then 
            wait(DayilightSpeed)
            lighting.ClockTime = Clock + 0.01
        elseif Clock >= 20.02 or Clock <=6 then
            wait(NightlightSpeed)
            lighting.ClockTime = Clock + 0.01
        end
    end
end]]--

function module.ChooseLobisomem()
	local lobisomem = game.Players:GetPlayers() [math.random(1, #game.Players:GetPlayers())]

	local sword = game.ReplicatedStorage.ClassicSword
	sword:Clone().Parent = lobisomem.Backpack

	local val = Instance.new('BoolValue')
	val.Name = "LobisomemValue"
	val.Parent = lobisomem

	wait()

	for i, v in pairs(game.Players:GetPlayers()) do
		if v:FindFirstChild('LobisomemValue') then
			v.PlayerGui.Main.Lobisomem.Visible = true
			wait(2)
			v.PlayerGui.Main.Lobisomem.Visible = false
		else
			v.PlayerGui.Main.Vitima.Visible = true
			wait(2)
			v.PlayerGui.Main.Vitima.Visible = false
		end
	end

end

function module.TPplayers()
	for i, v in pairs(game.Players:GetPlayers()) do
		local character = v.Character
		if character then
			character.HumanoidRootPart.CFrame = workspace.Map.TPpart.CFrame
		end
	end
end

function module.TPplayersBack()
	for i, v in pairs(game.Players:GetPlayers()) do
		v: FindFirstChild('Backpack'):ClearAllChildren()
		local character = v.Character
		for _, tool in pairs(character:GetChildren()) do
			if tool:IsA('Tool') then
				tool:Destroy()
			end
		end

		if character then
			character.HumanoidRootPart.CFrame = workspace.SpawnLocation.CFrame
		end
	end
end

return module