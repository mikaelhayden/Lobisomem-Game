local player = game.Players.LocalPlayer
local camera = workspace:WaitForChild('Camera')

local runservice = game:GetService('RunService')

local offset = 20

runservice.RenderStepped:Connect(function()
	
	if camera then
		camera.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, offset, 5), player.Character.HumanoidRootPart.CFrame.p)
	end
end)