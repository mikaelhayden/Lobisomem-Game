local module = {}

function module.CicleDay()
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
end

return module
