--Poly--

--Clicked--
script.Parent.MouseButton1Click:Connect(function()
	game:GetService("ReplicatedStorage").Radio:FireServer(script.Parent.Parent.SoundId.Text, script.Parent.Parent.Volume.Text, script.Parent.Parent.Speed.Text, script.Parent.Parent.TimePosition.Text)
end)
