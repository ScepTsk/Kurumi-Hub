local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Kurumi Hub (Build a boat for treasure)",
    Icon = "By ScepTsk",
    Author = "By ScepTsk",
    Background = "rbxassetid://106761977506684",
})

Window:SetBackgroundImageTransparency(0.2)

Window:EditOpenButton({
    Title = "Kurumi Hub",
    Icon = "monitor-smartphone",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("C10020"), 
        Color3.fromHex("C19552")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

local Tab = Window:Tab({
    Title = "Main",
    Icon = "house",
    Locked = false,
})

WindUI:Popup({
    Title = "info Kurumi Hub",
    Icon = "info",
    Content = "Telegram Channels: @XScepTskX @KurumiHub",
    Buttons = {
        {
            Title = "Cancel",
            Callback = function() end,
            Variant = "Tertiary",
        },
        {
            Title = "Ok",
            Icon = "arrow-right",
            Callback = function() end,
            Variant = "Primary",
        }
    }
})

Window:Tag({
    Title = "v1",
    Icon = "github",
    Color = Color3.fromHex("#FF0000"),
    Radius = 0,
})

local Toggle = Tab:Toggle({
    Title = "Enable Auto Farm",
    Desc = "Farm Gold +100",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local Connection, Part
getgenv().Toggle = false

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
         task.wait(3)
      end
      New:PivotTo(workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger:GetPivot())
      task.wait(3)
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

local Toggle2 = Tab:Toggle({
    Title = "Anti Afk",
    Desc = "Good Functions",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

local Players = cloneref(game:GetService("Players"))
local VirtualUser  = cloneref(game:GetService("VirtualUser")) Players.LocalPlayer.Idled:Connect(function() 
               VirtualUser:CaptureController()
               VirtualUser:ClickButton2(Vector2.new())
end)

        print("Toggle Activated" .. tostring(state))
    end
})


local Tab2 = Window:Tab({
    Title = "Shop",
    Icon = "shopping-cart",
    Locked = false,
})

local Button = Tab2:Button({
    Title = "Buy Paint Tool",
    Desc = "+1500 Gold  Cost",
    Locked = false,
    Callback = function()

local args = {
	"Painting Tool",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))
        
    end
})

local Button2 = Tab2:Button({
    Title = "Buy Binding Tool",
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

local Button3 = Tab2:Button({
    Title = "Auto Buy Property Tool",
    Desc = "+2500 Gold  Cost",
    Locked = false,
    Callback = function()

local args = {
	"Property Tool",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))
      
    end
})

local Button4 = Tab2:Button({
    Title = "Auto Buy Scaling Tool",
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

local Button5 = Tab2:Button({
    Title = "Auto Buy Trowel Tool",
    Desc = "+7500 Gold  Cost",
    Locked = false,
    Callback = function()

local args = {
	"Trowel Tool",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

    end
})

local Toggle1 = Tab2:Toggle({
    Title = "Auto Buy Sing Block",
    Desc = "+45 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Sign",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle2 = Tab2:Toggle({
    Title = "Auto Buy Boat Motor",
    Desc = "+450 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"BoatMotor",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle3 = Tab2:Toggle({
    Title = "Auto Buy Car Parts",
    Desc = "Toggle Description",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Car Parts",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle4 = Tab2:Toggle({
    Title = "Auto Buy Parachutes",
    Desc = "+45 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Parachutes",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle5 = Tab2:Toggle({
    Title = "Auto Buy Shield Generators",
    Desc = "+150 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Shield Generators",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

   
    end
})

local Toggle6 = Tab2:Toggle({
    Title = "Auto Buy Harpoon",
    Desc = "+200 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Harpoon",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle7 = Tab2:Toggle({
    Title = "Auto Buy Balloons",
    Desc = "+45 Gold Cost ",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Balloons",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

   
    end
})

local Toggle8 = Tab2:Toggle({
    Title = "Auto Buy JetPacks",
    Desc = "+350 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"JetPacks",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle9 = Tab2:Toggle({
    Title = "Auto Buy Plane Parts Blocks",
    Desc = "+4000 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Plane Parts",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

   
    end
})

local Toggle10 = Tab2:Toggle({
    Title = "Auto Buy Switch",
    Desc = "+50 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Switch",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

        
    end
})

local Toggle11 = Tab2:Toggle({
    Title = "Auto Buy Button",
    Desc = "+50 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Button",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

        
    end
})

local Toggle12 = Tab2:Toggle({
    Title = "Auto Buy LightBulb",
    Desc = "+60 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"LightBulb",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle13 = Tab2:Toggle({
    Title = "Auto Buy Camera",
    Desc = "+85 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Camera",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

        
    end
})

local Toggle14 = Tab2:Toggle({
    Title = "Auto Buy CameraDome",
    Desc = "+85 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"CameraDome",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle15 = Tab2:Toggle({
    Title = "Auto Buy Locked Doors",
    Desc = "+30 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Locked Doors",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle16 = Tab2:Toggle({
    Title = "Auto Buy Note",
    Desc = "+40 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Note",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle17 = Tab2:Toggle({
    Title = "Auto Buy HingeBlocks",
    Desc = "+45 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"HingeBlocks",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle18 = Tab2:Toggle({
    Title = "Auto Buy Delay",
    Desc = "+50 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Delay",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

        
    end
})

local Toggle19 = Tab2:Toggle({
    Title = "Auto Buy Pistons",
    Desc = "+65 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Pistons",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle20 = Tab2:Toggle({
    Title = "Auto Buy Magnets",
    Desc = "+125 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Magnets",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

 
    end
})

local Toggle21 = Tab2:Toggle({
    Title = "Auto Buy LegacyCarPack",
    Desc = "+750 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"LegacyCarPack",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle22 = Tab2:Toggle({
    Title = "Auto Buy SensorBlock",
    Desc = "+25 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SensorBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle23 = Tab2:Toggle({
    Title = "Auto Buy Gate",
    Desc = "64 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Gate",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle24 = Tab2:Toggle({
    Title = "Auto Buy DisplayBlock",
    Desc = "+96 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"DisplayBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle25 = Tab2:Toggle({
    Title = "Auto Buy RemoveController",
    Desc = "+150 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"RemoteController",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle26 = Tab2:Toggle({
    Title = "Auto Buy Rope",
    Desc = "+60 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Rope",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle27 = Tab2:Toggle({
    Title = "Auto Buy Bar",
    Desc = "+60 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Bar",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle28 = Tab2:Toggle({
    Title = "Auto Buy Spring",
    Desc = "+60 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Spring",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle29 = Tab2:Toggle({
    Title = "Auto Buy SticksOfTNT",
    Desc = "+20 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SticksOfTNT",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
      
    end
})

local Toggle30 = Tab2:Toggle({
    Title = "Auto Buy SpikeTrap",
    Desc = "+25 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SpikeTrap",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle31 = Tab2:Toggle({
    Title = "Auto Buy Cannon",
    Desc = "+80 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Cannon",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
     
    end
})

local Toggle32 = Tab2:Toggle({
    Title = "Auto Buy MiniGun",
    Desc = "+150 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"MiniGun",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle33 = Tab2:Toggle({
    Title = "Auto Buy CannonTurret",
    Desc = "+250 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"CannonTurret",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))


end
       
    end
})

local Toggle34 = Tab2:Toggle({
    Title = "Auto Buy SwordMount",
    Desc = "+50 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SwordMount",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
        
    end
})

local Toggle35 = Tab2:Toggle({
    Title = "Auto Buy CannonMount",
    Desc = "+50 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"CannonMount",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle36 = Tab2:Toggle({
    Title = "Auto Buy GunMount",
    Desc = "+50 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"GunMount",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
 
    end
})

local Toggle37 = Tab2:Toggle({
    Title = "Auto Buy WoodBlock",
    Desc = "+250 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false, 
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"WoodBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

    end
})

local Toggle38 = Tab2:Toggle({
    Title = "Auto Buy SmoothWoodBlock",
    Desc = "+250 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SmoothWoodBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle39 = Tab2:Toggle({
    Title = "Auto Buy GlassBlock",
    Desc = "+250 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"GlassBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle40 = Tab2:Toggle({
    Title = "Auto Buy StoneBlock",
    Desc = "+275 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"StoneBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle41 = Tab2:Toggle({
    Title = "Auto Buy FabricBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"FabricBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
      
    end
})

local Toggle42 = Tab2:Toggle({
    Title = "Auto Buy PlasticBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"PlasticBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
      
    end
})

local Toggle43 = Tab2:Toggle({
    Title = "Auto Buy GrassBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"GrassBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle44 = Tab2:Toggle({
    Title = "Auto Buy SandBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"SandBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle45 = Tab2:Toggle({
    Title = "Auto Buy Auto Buy RustedBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"RustedBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle46 = Tab2:Toggle({
    Title = "Auto Buy BouncyBlock",
    Desc = "+300 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"BouncyBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
      
    end
})

local Toggle47 = Tab2:Toggle({
    Title = "Auto Buy MetalBlock",
    Desc = "+325 Gold  Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"MetalBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle48 = Tab2:Toggle({
    Title = "Auto Buy ConcreteBlock",
    Desc = "+350 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"ConcreteBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
        
    end
})

local Toggle49 = Tab2:Toggle({
    Title = "Auto Buy lceBlock",
    Desc = "+350 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"IceBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle50 = Tab2:Toggle({
    Title = "Auto Buy CoalBlock",
    Desc = "+375 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"CoalBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle51 = Tab2:Toggle({
    Title = "Auto Buy BrickBlock",
    Desc = "+375 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"BrickBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle52 = Tab2:Toggle({
    Title = "Auto Buy MarbleBlock",
    Desc = "+375 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"MarbleBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
       
    end
})

local Toggle53 = Tab2:Toggle({
    Title = "Auto Buy TitaniumBlock",
    Desc = "+400 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"TitaniumBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end 
      
    end
})

local Toggle54 = Tab2:Toggle({
    Title = "Auto Buy ObsidianBlock",
    Desc = "+425 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"ObsidianBlock",
	5
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end
      
    end
})

local Tab3 = Window:Tab({
    Title = "Auto Open Chest",
    Icon = "chess-queen",
    Locked = false,
})

local Toggle = Tab3:Toggle({
    Title = "Auto Open Common Chest",
    Desc = "+5 Gold Cost",
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
    Title = "Auto Open Uncommon Chest",
    Desc = "+15 Gold Cost",
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
    Title = "Auto Open Rare Chest",
    Desc = "+45 Gold Cost",
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
    Title = "Auto Open Epic Chest",
    Desc = "+135 Gold Cost",
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
    Title = "Auto Open Legendary Chest",
    Desc = "+405 Gold Cost",
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

        print("done Script" .. tostring(state))
    end
})
