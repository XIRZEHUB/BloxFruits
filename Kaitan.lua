join = game.Players.localPlayer.Neutral == false
if not join then
	repeat wait()
		pcall(function()
			join = game.Players.localPlayer.Neutral == false
			for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do
        v.Function()
      end
		end)
	until join == true and game.Players.LocalPlayer.Team ~= nil and game:IsLoaded() 
end