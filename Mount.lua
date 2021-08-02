--Poly--

--On Server Event--
game:GetService("ReplicatedStorage").MountToBack.OnServerEvent:Connect(function(player, state, boombox)
	if state == true then
		for _, v in pairs(player.Character:GetChildren()) do
			if v.Name == "Handle" then
				v:Destroy()
			end
		end
	else
		local handle = boombox.Handle:Clone()
		handle.Parent = player.Character
		
		local weld = Instance.new("WeldConstraint", handle)
		
		handle.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 0.85) * CFrame.Angles(0, math.rad(180), math.rad(45))
		
		weld.Part0 = handle
		weld.Part1 = player.Character.HumanoidRootPart
	end
end)
