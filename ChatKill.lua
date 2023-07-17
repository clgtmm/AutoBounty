local RandomMessage = math.random(1, #getgenv().Chatkill)
local message = getgenv().Chatkill[RandomMessage]
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message,"All")
