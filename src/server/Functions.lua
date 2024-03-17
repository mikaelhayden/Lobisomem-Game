local module = {}

function module.ChooseLobisomem()
    local lobisomem = game.Players:GetPlayers() [math.random(1, #game.Players:GetPlayers())]

end

return module
