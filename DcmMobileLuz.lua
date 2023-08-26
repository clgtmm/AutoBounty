--[[
  Anh xin kính chào mấy thằng L sài mobile dcm mấy thg suc vat break cai aimbot cua tao lam tao phai di xai method cũ
]]

local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if tostring(method) == "FireServer" then
        if tostring(args[1]) == "RemoteEvent" then
            if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                if _G.PosTar ~= nil then
                    args[2] = _G.PosTar
                    return old(unpack(args))
                end
            end
        end
    end
    return old(...)
end)
