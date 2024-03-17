--local ReplicatedStorage = game:GetService("ReplicatedStorage")

local module = {}

function module.ChooseLobisomem()
    local lobisomem = game.Players:GetPlayers() [math.random(1, #game.Players:GetPlayers())]

    local sword = game.ReplicatedStorage.ClassicSword
    sword:Clone().Parent = lobisomem.Backpack

end

function module.TPplayers()
    for i, v in pairs(game.Players:GetPlayers()) do
        local character = v.Character
        if character then
            character.HumanoidRootPart.CFrame = workspace.Map.TPpart.CFrame
        end
    end
end

return module