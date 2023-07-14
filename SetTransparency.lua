for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
      pcall(function()
          if v.Transparency and v.Parent ~= game.Players.LocalPlayer.Character then
              v.Transparency = 1
          end
      end)
end
