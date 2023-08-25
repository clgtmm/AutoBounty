local oldIndex = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse and not checkcaller() and GetClosestPlayer() then
		local Part = GetClosestPlayer()
        if Index == "Hit" or Index == "hit" then
            return _G.CFrameTar
        end
    end
    return oldIndex(self, Index)
end))
