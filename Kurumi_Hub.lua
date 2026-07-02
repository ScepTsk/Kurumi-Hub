local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Kurumi Hub (Tower of Hell)",
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
    Content = "Telegram Channels: @KurumiHub",
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
    Title = "Auto Teleport to final",
    Desc = "Good Functiots",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(5) do


local Table = {}
local player = game.Players.LocalPlayer

local Total = 0
for _, v in ipairs(workspace.tower.sections:GetDescendants()) do
   if v:IsA("IntValue") and v.Name == "i" then
     table.insert(Table, {Id = v.Value, Obj = v.Parent})
     Total += 1 
  end
end

if game:GetService("ReplicatedStorage").GameValues.roundTime.Value < 60 then
   warn("Wait 60 Second After Start Round")
end

for i = 1, Total do
   for _, v in pairs(Table) do
      if v.Id == i then
         local Start = v.Obj:FindFirstChild("start") or nil
         if not Start and i ~= 1 then return end
         local char = player.Character or player.CharacterAdded:Wait()
         if Start and char then
            char:PivotTo(Start:GetPivot() + Vector3.new(0, 5, 0))
         end
   --[[  if i == Total then
            task.wait(6)
            local Finish = v.Obj:FindFirstChild("FinishGlow")
            if not Finish then return end
            for j = 1, 3 do
               char:PivotTo(Finish:GetPivot() - Vector3.new(-0.2, 2, 0))
               task.wait(1)
            end
         end --]]
      end
   end
   task.wait(5)
end

end

      
    end
})

local Toggle2 = Tab:Toggle({
    Title = "Anti AFK",
    Desc = "Good Luck",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

local Players = cloneref(game:GetService("Players"))
local VirtualUser  = cloneref(game:GetService("VirtualUser")) Players.LocalPlayer.Idled:Connect(function() 
               VirtualUser:CaptureController()
               VirtualUser:ClickButton2(Vector2.new())
end)

        print("done Script" .. tostring(state))
    end
})
