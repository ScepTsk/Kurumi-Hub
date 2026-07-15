local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:AddTheme({
    Name = "Kurumi Hub",
    
    Accent = Color3.fromHex("#B2BEB5"),
    Background = Color3.fromHex("#000000"),
    Outline = Color3.fromHex("#FFC5D3"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#FFB6C1"),
    Button = Color3.fromHex("#FFC5D3"),
    Icon = Color3.fromHex("#B2BEB5"),
})

local Window = WindUI:CreateWindow({
    Title = "Kurumi Hub — Build a boat for treasure",
    Icon = "rbxassetid://74013674609580",
    IconSize = 40,
    Author = "By ScepTsk",
    Background = "rbxassetid://72825188101110",
})

WindUI:SetTheme("Kurumi Hub")

Window:SetBackgroundImageTransparency(0.4)


Window:EditOpenButton({
    Title = "Kurumi Hub",
    Icon = "rbxassetid://124904217784740",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("FADADD"), 
        Color3.fromHex("FFB6C1")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

local Tab = Window:Tab({
    Title = "Automatic",
    Icon = "bot",
    Locked = false,
})

local Tab2 = Window:Tab({
    Title = "Player",
    Icon = "user",
    Locked = false,
})

local PlayerSection = Tab2:Section({
    Title = "Player Settings",
    Icon = "user-cog",
    Opened = true,
})

local Tab3 = Window:Tab({
    Title = "Auto Open Chest",
    Icon = "package",
    Locked = false,
})

local ChestSection = Tab3:Section({
    Title = "Farm Chests",
    Icon = "sparkles",
    Opened = true,
})

local Tab4 = Window:Tab({
    Title = "Auto Buy Tools",
    Icon = "shopping-cart",
    Locked = false,
})

local ToolsSection = Tab4:Section({
    Title = "Auto Shop Tools",
    Icon = "zap",
    Opened = true,
})

Window:Divider()
Tab:Divider()

local Tab5 = Window:Tab({
    Title = "information",
    Icon = "info",
    Locked = false,
})

local FpsTag = Window:Tag({
    Title = "FPS: --",
    Icon = "gauge",
    Color = Color3.fromHex("#FFC5D3"),
    Radius = 8,
})


local Stats = cloneref(game:GetService("Stats"))
local FrameRateManager = Stats and Stats:FindFirstChild("FrameRateManager")
local RenderAverage = FrameRateManager and FrameRateManager:FindFirstChild("RenderAverage")

task.spawn(function()
    while task.wait(1) do
        if RenderAverage and FpsTag then
            local fps = math.floor(1000 / RenderAverage:GetValue())
            if FpsTag.SetTitle then
                FpsTag:SetTitle("FPS: " .. fps)
            end
        end
    end
end)

local Button = Tab4:Button({
    Title = "Buy Paint",
    Desc = "+1500 Gold Cost",
    Locked = false,
    Callback = function()
     
local args = {
	"Painting Tool",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))
        
    end
})

local Button2 = Tab4:Button({
    Title = "Buy Binding",
    Desc = "+2000 Gold Cost",
    Locked = false,
    Callback = function()

local args = {
 "Binding Tool",
 1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))     
                  
    end
})

local Button3 = Tab4:Button({
    Title = "Buy Property",
    Desc = "+2500 Gold Cost",
    Locked = false,
    Callback = function()

local args = {
 "Property Tool",
 1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))
      
    end
})

local Button4 = Tab4:Button({
    Title = "Buy Scaling",
    Desc = "+5000 Gold Cost",
    Locked = false,
    Callback = function()
        
local args = {
 "Scaling Tool",
 1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

    end
})

local Button5 = Tab4:Button({
    Title = "Buy Trowel",
    Desc = "+7500 Gold Cost",
    Locked = false,
    Callback = function()
        
local args = {
 "Trowel Tool",
 1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))
      
    end
})

local Toggle = Tab3:Toggle({
    Title = "Open Common",
    Desc = "opens +200 Common chests",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
    
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Common Chest",
	200
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle2 = Tab3:Toggle({
    Title = "Open Uncommon",
    Desc = "opens +100 Uncommon chests",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Uncommon Chest",
	100
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle3 = Tab3:Toggle({
    Title = "Open Rare",
    Desc = "opens +10 Rare chests",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Rare Chest",
	10
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

  
    end
})

local Toggle4 = Tab3:Toggle({
    Title = "Open Epic",
    Desc = "opens +10 Epic chests",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Epic Chest",
	10
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle5 = Tab3:Toggle({
    Title = "Open Legendary",
    Desc = "opens +10 Legendary chests",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Legendary Chest",
	10
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Slider = Tab2:Slider({
    Title = "WalkSpeed",
    Desc = "select the speed value",
    
 
    Step = 1,
    Value = {
        Min = 40,
        Max = 500,
        Default = 35,
    },
    Callback = function(value)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value

        print(value)
    end
})

local Slider2 = Tab2:Slider({
    Title = "JumpPower",
    Desc = "select the Power Value",
    
   
    Step = 1,
    Value = {
        Min = 60,
        Max = 500,
        Default = 60,
    },
    Callback = function(value)

local Hum = game.Players.LocalPlayer.Character.Humanoid

local Power = value
if Hum and Hum.UseJumpPower then
   Hum.JumpPower = Power
else
   Hum.JumpHeight = (Power ^ 2) / (2 * workspace.Gravity)
end

        print(value)
    end
})


local Toggle3 = Tab2:Toggle({
    Title = "Anti AFK",
    Desc = "auto afk Bypass ",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
    
getgenv().AntiAFK = false  

local Players = cloneref(game:GetService("Players"))
local VirtualUser  = cloneref(game:GetService("VirtualUser")) Players.LocalPlayer.Idled:Connect(function() 
               VirtualUser:CaptureController()
               VirtualUser:ClickButton2(Vector2.new())
end)

       
    end
})

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Connection, Part
getgenv().Toggle = false

local Toggle = Tab:Toggle({
    Title = "Start Farm Gold",
    Desc = "the script Farms 70-100 Golds",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 


if state then
   getgenv().Toggle = true
   local char = player.Character or player.CharacterAdded:Wait()
   local humanoid = char.Humanoid
   local hrp = char.HumanoidRootPart
   humanoid.Health = 0
   Connection = player.CharacterAdded:Connect(function(New)
      local NewHrp = New:WaitForChild("HumanoidRootPart")
      local NewHum = New:WaitForChild("Humanoid")
      Part = Instance.new("Part", workspace)
      Part.Anchored = true
      local Y = NewHrp.Position.Y + 20
      task.spawn(function()
         while getgenv().Toggle and task.wait() do
            Part.CFrame = CFrame.new(NewHrp.Position.X, Y, NewHrp.Position.Z)
         end
      end)
      for i = 1, 10 do
         New:PivotTo(workspace.BoatStages.NormalStages["CaveStage"..tostring(i)]:GetPivot() + Vector3.new(0, 50, 0))
         task.wait(2)
      end
      New:PivotTo(workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger:GetPivot())
      task.wait(7.1)
      NewHum.Health = 0
   end)
else
   getgenv().Toggle = false
   if Connection then
      Connection:Disconnect()
   end
   if Part and Part:IsDescendantOf(workspace) then 
      Part:Destroy()
   end
end

        
    end
})

local RunService = game:GetService("RunService")
local player = game.Players.LocalPlayer 
local Connect = nil

local Toggle4 = Tab2:Toggle({
    Title = "Noclip",
    Desc = "Walk through walls",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

if state then
   Connect = RunService.Stepped:Connect(function()
      local char = player.Character or player.CharacterAdded:Wait()
      for _, v in ipairs(char:GetDescendants()) do
         if v:IsA("BasePart") and v.CanCollide == true then 
            v.CanCollide = false
         end
      end
   end)
else
   if Connect then
      Connect:Disconnect()
   end
   local char = player.Character or player.CharacterAdded:Wait()
   for _, v in ipairs(char:GetDescendants()) do
      if v:IsA("BasePart") and v.CanCollide == false then 
         v.CanCollide = true
      end
   end
end

        
    end
})


local InfoSection = Tab5:Section({
    Title = "Kurumi Hub Official Socials",
    Icon = "link",
    Opened = true,
})

local Paragraph = InfoSection:Paragraph({
    Title = "Telegram Channel: @KurumiHub",
    Desc = "Join For Updates and Support",
    Color = Color3.fromRGB(0, 0, 0), 
    Image = "rbxassetid://131872710335157",
    ImageSize = 65,
    Thumbnail = "",
    ThumbnailSize = 250,
    Locked = false,
    Buttons = {
        {
            Icon = "link",
            Title = "Copy Link",
            Callback = function()
                setclipboard("https://t.me/KurumiHub")
                print("Telegram Link Copied!")
                
                
                WindUI:Notify({
                    Title = "Link copied successfully!",
                    Content = "link copied to clipboard",
                    Duration = 2.5,
                    Icon = "check",
                })
            end,       
        }
    }
})

InfoSection:Divider()

local Paragraph2 = InfoSection:Paragraph({
    Title = "Discord Server: @KurumiHub",
    Desc = "Join our Community for More",
    Color = Color3.fromRGB(0, 0, 0),    
    Image = "rbxassetid://95024646330939",
    ImageSize = 65,
    Thumbnail = "",
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "link",
            Title = "Copy Link",
            Callback = function()
                setclipboard("https://discord.gg/jjwG4SA4ed")
                print("Discord Link Copied!")
                
                
                WindUI:Notify({
                    Title = "Link copied successfully!",
                    Content = "link copied to clipboard",
                    Duration = 2.5,
                    Icon = "check",
                })
            end,
        }
    }
})
