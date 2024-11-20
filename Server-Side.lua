local Players = game:GetService("Players")
local RemoteEvent = Instance.new("RemoteEvent")
RemoteEvent.Parent = game.ReplicatedStorage

local validKeys = {"your_key_1", "your_key_2", ...}

RemoteEvent.OnServerEvent:Connect(function(player, key)
    if table.find(validKeys, key) then
        player:SendToClient("EnableGUI", true)
    else
        player:SendToClient("EnableGUI", false)
    end
end)
