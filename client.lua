--###########################################################################--
--## MADE BY "Bazookan" AND "Viking" PLEASE DO NOT TAKE ANY CREDIT OF THIS!##--
--###########################################################################--
-------------------------------------------------------------------------------
local alreadyDead = false
function signal()
    local playerPed = GetPlayerPed(-1)
    local coords    = GetEntityCoords(playerPed)
     local call = math.random(0, 3)
     if call == 2 then

    TriggerServerEvent('esx_phone:send', "ambulance", 'En medvetslös person ligger på marken', true, {
        x = coords.x,
        y = coords.y,
        z = coords.z
    })
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(50)
        local playerPed = GetPlayerPed(-1)
        if IsEntityDead(playerPed) and not alreadyDead then
                signal()
                alreadyDead = true
            end

        if not IsEntityDead(playerPed) then
            alreadyDead = false
        end
    end
end)