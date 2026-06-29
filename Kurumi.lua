local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Kurumi Hub (NFT Battle)",
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
    Title = "Auto Farm Cases",
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
    Title = "v1.1.0",
    Icon = "scroll",
    Color = Color3.fromHex("#8B0000"),
    Radius = 0,
})

local Toggle = Tab:Toggle({
    Title = "Auto Open Beggar",
    Desc = "Case +220 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Beggar",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle2 = Tab:Toggle({
    Title = "Auto Open Plodder",
    Desc = "Case +440 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Plodder",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle3 = Tab:Toggle({
    Title = "Auto Open Office Clerk",
    Desc = "Case +689 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do
local args = {
	"Office Clerk",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle4 = Tab:Toggle({
    Title = "Auto Open Manager",
    Desc = "Case +835 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Manager",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle5 = Tab:Toggle({
    Title = "Auto Open Director",
    Desc = "Case +926 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do
local args = {
	"Director",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle6 = Tab:Toggle({
    Title = "Auto Open Oligarch",
    Desc = "Case +1,364 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do
local args = {
	"Oligarch",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle7 = Tab:Toggle({
    Title = "Auto Open Frozen Heart",
    Desc = "Case +4,500 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Frozen Heart",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle8 = Tab:Toggle({
    Title = "Auto Open Bubble Gum",
    Desc = "Case +12,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do
local args = {
	"Bubble Gum",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle9 = Tab:Toggle({
    Title = "Auto Open Cats",
    Desc = "Case +40,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Cats",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle10 = Tab:Toggle({
    Title = "Auto Open Clitch",
    Desc = "Case +135,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Glitch",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle11 = Tab:Toggle({
    Title = "Auto Open Dream",
    Desc = "Case +250,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Dream",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle12 = Tab:Toggle({
    Title = "Auto Open Bloody Night",
    Desc = "Case +5,000,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Bloody Night",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle13 = Tab:Toggle({
    Title = "Auto Open Ninja Turtles",
    Desc = "Case +10,000,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Ninja Turtles",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle14 = Tab:Toggle({
    Title = "Auto Open Desk Calendars",
    Desc = "Case +44,000,000 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Desk Calendars",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle15 = Tab:Toggle({
    Title = "Auto Open Dio",
    Desc = "Case +577,777,777 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Dio",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle16 = Tab:Toggle({
    Title = "Auto Open M5 F90",
    Desc = "Case +55,555 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"M5 F90",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle17 = Tab:Toggle({
    Title = "Auto Open G63",
    Desc = "Case +177,777 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"G63",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle18 = Tab:Toggle({
    Title = "Auto Open Porsche 911",
    Desc = "Case +599,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Porsche 911",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle19 = Tab:Toggle({
    Title = "Auto Open URUS",
    Desc = "Case +1,666,666 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"URUS",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle20 = Tab:Toggle({
    Title = "Auto Open Cyber",
    Desc = "Case +13,444,222 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Cyber",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle21 = Tab:Toggle({
    Title = "Auto Open Gold",
    Desc = "Case +1,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Gold",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle22 = Tab:Toggle({
    Title = "Auto Open Dark",
    Desc = "Case +4,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Dark",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle23 = Tab:Toggle({
    Title = "Auto Open Palm",
    Desc = "Case +13,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Palm",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle24 = Tab:Toggle({
    Title = "Auto Open Burj",
    Desc = "Case +37,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Burj",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle25 = Tab:Toggle({
    Title = "Auto Open Luxury",
    Desc = "Case +119,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Luxury",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle26 = Tab:Toggle({
    Title = "Auto Open Monarch",
    Desc = "Case +12,999,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle27 = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Monarch",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

        
    end
})

local Toggle28 = Tab:Toggle({
    Title = "Auto Open Radioactive",
    Desc = "Case +24,999,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Radioactive",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

       
    end
})

local Toggle29 = Tab:Toggle({
    Title = "Auto Open Angel",
    Desc = "Case +33,333,333 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Angel",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle30 = Tab:Toggle({
    Title = "Auto Open Thash",
    Desc = "Free Case",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Trash",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end


    end
})

local Toggle31 = Tab:Toggle({
    Title = "Auto Open Daily",
    Desc = "Free Case",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
 "Daily",
 10,
 {}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Tab2 = Window:Tab({
    Title = "Auto Sell",
    Icon = "dollar-sign",
    Locked = false,
})

local Toggle2 = Tab2:Toggle({
    Title = "Auto Sell NFT",
    Desc = "All NFT",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Sell",
	"ALL",
	false
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Inventory"):FireServer(unpack(args))

end

    
    end
})

local Tab3 = Window:Tab({
    Title = "Auto Upgrade",
    Icon = "list",
    Locked = false,
})

local Toggle3 = Tab3:Toggle({
    Title = "Upgrade Nft",
    Desc = "the script only clicks on the Upgrade button (and you have to choose the nft yourself)",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pages.Upgrade.MainFrame.Open.Activated)

end

      
    end
})

local Toggle4 = Tab3:Toggle({
    Title = "Upgrade Nft",
    Desc = "All Nft",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

local Player = game.Players.LocalPlayer
local function FindLowObj(Object)
   local LowPrice, Obj
   for _, v in ipairs(Object:GetChildren()) do
      if v:IsA("Frame") and v.Price and v.Visible == true then
         local Price = v.Price.Text
         Price = Price:gsub("⭐", "")
         Price = Price:gsub(",", "")
         local Clear = tonumber(Price)
         if not LowPrice then
            LowPrice = Clear
            Obj = v.Price
         end
         if Clear < LowPrice then
            LowPrice = Clear
            Obj = v.Price
         end
      end
   end
   return Obj
end

local First = Player.PlayerGui.MainGui.Pages.Upgrade.MainFrame.Inventory.Inventory
local Second = Player.PlayerGui.MainGui.Pages.Upgrade.MainFrame.Choose.Choose
local Third = Player.PlayerGui.MainGui.Pages.Upgrade.MainFrame.Open

getgenv().Toggle = state
while getgenv().Toggle and task.wait(1) do
   local F = FindLowObj(First).Parent.Button
   local S = FindLowObj(Second).Parent.Button
   local T = Third
   firesignal(F.Activated)
   firesignal(S.Activated)
   task.wait(0.5)
   firesignal(T.Activated)
end
     
    end
})

local Toggle32 = Tab:Toggle({
    Title = "Auto Open Durov",
    Desc = "Case +1,500 TON Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Durov",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

      
    end
})

local Toggle33 = Tab:Toggle({
    Title = "Auto Open Sunny Day",
    Desc = "Case +15,000 TON Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Sunny Day",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle34 = Tab:Toggle({
    Title = "Auto Open REDO",
    Desc = "Case +47,500 TON Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"REDO",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle35 = Tab:Toggle({
    Title = "Auto Open Death Note",
    Desc = "Case +79,750 TON Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Death Note",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})

local Toggle36 = Tab:Toggle({
    Title = "Auto Open Magnate",
    Desc = "Case +500 Diamonds Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do


local args = {
	"Magnate",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

     
    end
})


local Toggle37 = Tab:Toggle({
    Title = "Auto Open Cirque",
    Desc = "Case +700 Diamonds Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"Cirque",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle38 = Tab:Toggle({
    Title = "Auto Open The Boys",
    Desc = "Case +1,500 Diamonds Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"The Boys",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

    
    end
})

local Toggle39 = Tab:Toggle({
    Title = "Auto Open TSUM",
    Desc = "Case +999,999,999 Stars Cost",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local args = {
	"TSUM",
	10,
	{}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))

end

        print("Toggle Activated" .. tostring(state))
    end
})
