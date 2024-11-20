local RemoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
local GUI = script.Parent -- Assuming the GUI is a child of this script

local function onKeyInput(key)
    RemoteEvent:FireServer(key)
end

-- ... (code for key input, e.g., text box or command)

RemoteEvent.OnClientEvent:Connect(function(enable)
    GUI.Visible = enable
end)
