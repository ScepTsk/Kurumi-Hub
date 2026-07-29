
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:AddTheme({
    Name = "Kami Hub",
    
    Accent = Color3.fromHex("#B2BEB5"),
    Background = Color3.fromHex("#000000"),
    Outline = Color3.fromHex("#FFC5D3"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#FFB6C1"),
    Button = Color3.fromHex("#FFC5D3"),
    Icon = Color3.fromHex("#B2BEB5"),
})

local Window = WindUI:CreateWindow({
    Title = "Kami Hub — Nft Battle",
    Icon = "rbxassetid://74013674609580",
    IconSize = 40, 
    Author = "By @ScepTsk",
    Background = "rbxassetid://72825188101110",
})

WindUI:SetTheme("Kami Hub")

Window:SetBackgroundImageTransparency(0.4)

Window:EditOpenButton({
    Title = "Kami Hub",
    Icon = "rbxassetid://124904217784740",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new(
        Color3.fromHex("#FADADD"), 
        Color3.fromHex("#FFB6C1")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = true,
})

local Tab = Window:Tab({
    Title = "Auto Open Cases",
    Icon = "bot",
    Locked = false,
})

local Tab2 = Window:Tab({
    Title = "Upgrades & Sell",
    Icon = "wrench",
    Locked = false,
})

local Tab3 = Window:Tab({
    Title = "Farm SUMMER Event",
    Icon = "sun",
    Locked = false,
})

local Tab4 = Window:Tab({
    Title = "Settings",
    Icon = "settings",
    Locked = false,
})

Window:Divider()
Tab:Divider()

local Tab5 = Window:Tab({
    Title = "information",
    Icon = "info",
    Locked = false,
})

local AutomaticSection = Tab:Section({
    Title = "Farm MIX CASES",
    Icon = "sparkles",
    Opened = true,
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

Window:Tag({
    Title = "v1.2.0",
    Icon = "zap",
    Color = Color3.fromHex("#FFC5D3"),
    Radius = 8,
})

local ToggleBeggar = Tab:Toggle({
    Title = "Open Beggar",
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

local TogglePlodder = Tab:Toggle({
    Title = "Open Plodder",
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

local ToggleOfficeClerk = Tab:Toggle({
    Title = "Open Office Clerk",
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

local ToggleManager = Tab:Toggle({
    Title = "Open Manager",
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

local ToggleDirector = Tab:Toggle({
    Title = "Open Director",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Director = state
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

local ToggleOligarch = Tab:Toggle({
    Title = "Open Oligarch",
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

local AutomaticSection = Tab:Section({
    Title = "Farm SPECIAL CASES",
    Icon = "flame",
    Opened = true,
})

local ToggleFrozenHeart = Tab:Toggle({
    Title = "Open Frozen Heart",
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

local ToggleBubbleGum = Tab:Toggle({
    Title = "Open Bubble Gum",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
     getgenv().Toggle  = state
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

local ToggleCats = Tab:Toggle({
    Title = "Open Cats",
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

local ToggleClitch = Tab:Toggle({
    Title = "Open Clitch",
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

local ToggleDream = Tab:Toggle({
    Title = "Open Dream",
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

local ToggleBloodyNight = Tab:Toggle({
    Title = "Open Bloody Night",
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

local ToggleDio = Tab:Toggle({
    Title = "Open Dio",
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

local ToggleTSUM = Tab:Toggle({
    Title = "Open TSUM",
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
   
    end
})

local AutomaticSection = Tab:Section({
    Title = "Farm CARS CASES",
    Icon = "moon-star",
    Opened = true,
})

local ToggleM5F90 = Tab:Toggle({
    Title = "Open M5 F90",
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

local ToggleG63 = Tab:Toggle({
    Title = "Open G63",
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

local TogglePorsche911 = Tab:Toggle({
    Title = "Open Porsche 911",
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

local ToggleURUS = Tab:Toggle({
    Title = "Open URUS",
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

local ToggleCyber = Tab:Toggle({
    Title = "Open Cyber",
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

local AutomaticSection = Tab:Section({
    Title = "Farm NFT CASES",
    Icon = "zap",
    Opened = true,
})

local ToggleGold = Tab:Toggle({
    Title = "Open Gold",
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

local ToggleDark = Tab:Toggle({
    Title = "Open Dark",
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

local TogglePalm = Tab:Toggle({
    Title = "Open Palm",
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

local ToggleBurj = Tab:Toggle({
    Title = "Open Burj",
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

local ToggleLuxury = Tab:Toggle({
    Title = "Open Luxury",
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

local ToggleMonarch = Tab:Toggle({
    Title = "Open Monarch",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
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

local ToggleRadioactive = Tab:Toggle({
    Title = "Open Radioactive",
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

local ToggleAngel = Tab:Toggle({
    Title = "Open Angel",
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

local AutomaticSection = Tab:Section({
    Title = "Farm FREE CASES",
    Icon = "snowflake",
    Opened = true,
})

local ToggleThash = Tab:Toggle({
    Title = "Open Thash",
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

local ToggleDaily = Tab:Toggle({
    Title = "Open Daily",
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

local AutomaticSection = Tab:Section({
    Title = "Farm CURRENCY CASES",
    Icon = "dna",
    Opened = true,
})

local ToggleDurov = Tab:Toggle({
    Title = "Open Durov",
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

local ToggleSunnyDay = Tab:Toggle({
    Title = "Open Sunny Day",
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

local ToggleREDO = Tab:Toggle({
    Title = "Open REDO",
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

local ToggleDeathNote = Tab:Toggle({
    Title = "Open Death Note",
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

local ToggleMagnate = Tab:Toggle({
    Title = "Open Magnate",
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


local ToggleCirque = Tab:Toggle({
    Title = "Open Cirque",
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

local ToggleBlueEyes = Tab:Toggle({
    Title = "Open Blue Eyes",
    Icon = "bird",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
 getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Blue Eyes",
    10,
    {}
)

end
 
    end
})

local ToggleTheBoys = Tab:Toggle({
    Title = "Open The Boys",
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


local ToggleButterfly = Tab:Toggle({
    Title = "Open Butterfly",
    Icon = "play",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Butterfly",
    10,
    {}
)

       end 
    end
})

local ToggleMineblox = Tab:Toggle({
    Title = "Open Mineblox",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Mineblox",
    10,
    {}
)

end

    end
})

local AutomaticSection = Tab:Section({
    Title = "Farm Limited Cases",
    Icon = "snowflake",
    Opened = true,
})

local Toggle = Tab:Toggle({
    Title = "Open Tropical",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Tropical",
    10,
    {}
)

end
       
    end
})

local Toggle2 = Tab:Toggle({
    Title = "Open Desert",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Desert",
    10,
    {}
)

end
  
    end
})

local Toggle3 = Tab:Toggle({
    Title = "Open Blooming Sakura",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Blooming Sakura",
    10,
    {}
)

end 

    end
})

local Toggle4 = Tab:Toggle({
    Title = "Open Shark Bite",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

local Event = game:GetService("ReplicatedStorage").Events.OpenCase
Event:InvokeServer(
    "Shark Bite",
    10,
    {}
)

end

    end
})

local ToggleUpgradeNFT = Tab2:Toggle({
    Title = "Upgrade All NFT",
    Icon = "zap",
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
   firesignal(T.Activated)
end
     
    end
})

local ToggleUpgradeSelectedNFT = Tab2:Toggle({
    Title = "Upgrade Selected NFT",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

getgenv().Toggle = state
while getgenv().Toggle and task.wait(2) do

firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pages.Upgrade.MainFrame.Open.Activated)

end

      
    end
})

Tab2:Divider()

local ToggleAutoSellNFT = Tab2:Toggle({
    Title = "Auto Sell All NFT",
    Icon = "dollar-sign",
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

local Dropdown = Tab4:Dropdown({
    Title = "Select Image",
    Desc = "Background",
    Values = { "Huohuo", "Huohuo 2" },
    Value = "Huohuo",
    Callback = function(option) 
    
if option == "Huohuo" then
        Window:SetBackgroundImage("rbxassetid://72825188101110")

elseif option == "Huohuo 2" then 
      Window:SetBackgroundImage("rbxassetid://87751178476615")
end     

       print("Background selected: " .. option) 
    end
})

local Toggle1 = Tab3:Toggle({
    Title = "Auto Claim Currency",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

if state then

        pcall(function()
        firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pages.Summer.MainFrame.Content.Claim.Activated)
        
     end)
end     

getgenv().ToggleAutoClaimCurrency = state
while getgenv().Toggle and task.wait(61) do

pcall(function()
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pages.Summer.MainFrame.Content.Claim.Activated)


         end)
     end  
  end
}) 

     
local Toggle2 = Tab3:Toggle({
    Title = "Auto Spin",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
 
getgenv().Toggle = state 

if state then
   pcall(function()
   local Event = game:GetService("ReplicatedStorage").Events.Summer
Event:InvokeServer(
    "Spin"
)

      end)
end

while getgenv().Toggle and task.wait(10800) do
   pcall(function()
local Event = game:GetService("ReplicatedStorage").Events.Summer
Event:InvokeServer(
    "Spin"
)

              end)
         end
   end 
})

local AntiAFKConnection = nil

local ToggleAntiAFK = Tab4:Toggle({
    Title = "AntiAFK",
    Icon = "zap",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 

local Players = cloneref(game:GetService("Players"))
local VirtualUser  = cloneref(game:GetService("VirtualUser"))
local player = game.player.LocalPlayer
               
if state then
                   if not AntiAFKConnection then
     AntiAFKConnection = LocalPlayer.Idled:Connect(function()     
               VirtualUser:CaptureController()
               VirtualUser:ClickButton2(Vector2.new())
           end)    
     end
else      

      if AntiAFKConnection then
    AntiAFKConnection:Disconnect()
    AntiAFKConnection = nil

          end 
      end 
end 
})

local InfoSection = Tab5:Section({
    Title = "Kami Hub Official Socials",
    Icon = "link",
    Opened = true,
})

local Paragraph = InfoSection:Paragraph({
    Title = "Telegram Channel: @KamiHub",
    Desc = "Join For Updates and Support",
    Color = Color3.fromRGB(0, 0, 0), 
    Image = "rbxassetid://73337938036398",
    ImageSize = 65,
    Thumbnail = "",
    ThumbnailSize = 250,
    Locked = false,
    Buttons = {
        {
            Icon = "link",
            Title = "Copy Link",
            Callback = function()
                setclipboard("https://t.me/KamiHub")
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
    Title = "Discord Server: @KamiHub",
    Desc = "Join our Community for More",
    Color = Color3.fromRGB(0, 0, 0),    
    Image = "rbxassetid://117121115829028",
    ImageSize = 65,
    Thumbnail = "",
    ThumbnailSize = 150,
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
