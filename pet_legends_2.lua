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

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 18,
	Max = 200,
	Default = 18,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
    	Save = true,
    	Flag = "slider",
	Callback = function(v)
		hum.WalkSpeed = v
	end    
})

PlayerTab:AddToggle({
	Name = "Anti AFK",
	Default = false,
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
	Name = "Eggs",
	Callback = function()
        local CFrameEnd = CFrame.new(-1214.82, 36.686, 327.882)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Fuse",
	Callback = function()
        local CFrameEnd = CFrame.new(-1192.07, 38.0577, -80.812)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Upgrade",
	Callback = function()
        local CFrameEnd = CFrame.new(-1198.57, 40.933, -387.312)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Zone 1",
	Callback = function()
        local CFrameEnd = CFrame.new(-1189.07, 44.0863, -653.1)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Zone 2",
	Callback = function()
        local CFrameEnd = CFrame.new(-1192.07, 47.0074, -955.147)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
TeleportTab:AddButton({
	Name = "Frozen World - Chest",
	Callback = function()
        local CFrameEnd = CFrame.new(-1198.57, 50.0082, -1249.62)
        local Time = 0
        local tweent =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tweent:Play()
        tweent.Completed:Wait()
  	end    
})
end
OrionLib:Init()