if game.PlaceId == 8864518888 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Pet Legends 2 by Nalathan", HidePremium = true, IntroEnabled = false,SaveConfig = false, ConfigFolder = "Pet Legends 2"})
local hum = game:GetService("Players").LocalPlayer.Character.Humanoid
local vu = game:GetService("VirtualUser")

local TeleportTab = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local RewardTab = Window:MakeTab({
	Name = "Redeem Reward",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

RewardTab:AddToggle({
        Name = "Rank Reward",
	Default = true,
        Save = true,
        Flag = "toggle",
	Callback = function(Value)
        while true do
	game:GetService("ReplicatedStorage").Game.Events.ReddemRankReward:InvokeServer()
        wait(28800)
	end   
})

RewardTab:AddToggle({
        Name = "VIP Reward",
	Default = true,
        Save = true,
        Flag = "toggle",
	Callback = function(Value)
        while true do
	game:GetService("ReplicatedStorage").Game.Events.ReddemVIPReward:InvokeServer()
        wait(28800)
	end   
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 18,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
        Save = true,
        Flag = "slider",
	Callback = function(v)
	hum.WalkSpeed = v
	end    
})
PlayerTab:AddButton({
	Name = "AutoClicker",
	Callback = function()
        loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JustEzpi/ROBLOX-Scripts/main/ROBLOX_AutoClicker"))()
        end    
})
PlayerTab:AddToggle({
	Name = "Anti AFK",
	Default = true,
        Save = true,
        Flag = "toggle",
	Callback = function(Value)
	game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
	end   
})
TeleportTab:AddButton({
	Name = "VIP",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W1_Vip.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Eggs",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W1_Z1.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Fuse",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W1_Z2.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Upgrade",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W1_Z3.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Zone 1",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W2_Z1.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Zone 2",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W2_Z2.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Chest",
	Callback = function()
        local CFrameEnd = CFrame.new(game.Workspace._MAP_.Teleports.W2_Z3.Position + Vector3.new(0,3,0))
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
end
OrionLib:Init()
