--Poly--

--On Server Event--
game:GetService("ReplicatedStorage").Radio.OnServerEvent:Connect(function(player, id, volume, speed, timePosition)
	if id ~= nil then
		for _, v in pairs(player.Character.HumanoidRootPart:GetChildren()) do
			if v.Name == "Sound" then
				v:Destroy()
			end
		end

		local sound = Instance.new("Sound", player.Character.HumanoidRootPart)
		sound.SoundId = "rbxassetid://"..id
		sound.Name = "Sound"

		sound.Looped = true
		sound:Play()

		if volume ~= "" then
			sound.Volume = volume
		end

		if speed ~= "" then
			sound.PlaybackSpeed = speed
		end

		if sound.timePosition ~= "" then
			sound.TimePosition = timePosition
		end
	else
		for _, v in pairs(player.Character.HumanoidRootPart:GetChildren()) do
			if v.Name == "Sound" then
				v:Destroy()
			end
		end
	end
end)
