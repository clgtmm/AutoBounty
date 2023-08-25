--[[
	Huhu em chao may anh trum scripter
]]

local SexyAimbot = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
SexyAimbot = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse and not checkcaller() and GetClosestPlayer() then
		local Part = GetClosestPlayer()
        if Index == "Hit" or Index == "hit" then
            return _G.CFrameTar
        end
    end
    return SexyAimbot(self, Index)
end))
