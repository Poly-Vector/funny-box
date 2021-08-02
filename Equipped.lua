--Poly--

--Variables--
local player = game:GetService("Players").LocalPlayer

script.Parent.Equipped:Connect(function()
	script.Parent.BoomboxUi:Clone().Parent = player.PlayerGui
	
	game:GetService("ReplicatedStorage").MountToBack:FireServer(true, script.Parent)
end)

script.Parent.Unequipped:Connect(function()
	for _, v in pairs(player.PlayerGui:GetChildren()) do
		if v.Name == "BoomboxUi" then
			v:Destroy()
		end
	end
	
	game:GetService("ReplicatedStorage").MountToBack:FireServer(false, script.Parent)
end)
