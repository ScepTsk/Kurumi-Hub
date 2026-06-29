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
         task.wait(6)
      end
      New:PivotTo(workspace.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger:GetPivot())
      task.wait(5)
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
    Title = "Auto Open Legendary",
    Desc = "Chest +405 Gold Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false, 
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do

local args = {
	"Legendary Chest",
	1
}
workspace:WaitForChild("ItemBoughtFromShop"):InvokeServer(unpack(args))

end

        print("done Script" .. tostring(state))
    end
})
