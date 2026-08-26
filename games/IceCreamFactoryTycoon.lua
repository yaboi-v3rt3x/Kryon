local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- #=# Variables #=# --
local plr = game.Players.LocalPlayer
local char = plr.Character
local obby = game.Workspace.Environment.Obby
local tycoon = nil
for _, v in ipairs(game.Workspace.Tycoons:GetChildren()) do
   if v.Owner.Value == plr.Name then
      tycoon = v
   end
end

-- #=# Auto-Claim Factory #=# --
if game.Players.LocalPlayer.Team == nil then
	for _, v in ipairs(game.Workspace.Tycoons:GetChildren()) do
      if v.Owner.Value == "" then
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Essentials.Claim.CFrame
         tycoon = v
      end
   end
end

-- #=# Auto-Farm Values #=# --
local afobby = false
local afsell = false
local afbuy = false
local cost = 0
local bal = 0

-- #=# UI #=# --
local Window = Rayfield:CreateWindow({
   Name = "Kryon | Ice Cream Factory Tycoon",
   Icon = 0,
   LoadingTitle = "Kryon",
   LoadingSubtitle = "Ice Cream Factory Tycoon",
   ShowText = "Kryon",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Kryon",
      FileName = "IceCreamFactoryTycoon"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Kryon",
      Subtitle = "Key System",
      Note = "Kryon is keyless.",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Key"}
   }
})

-- #=# Hub Tab #=# -- 
local hubTab = Window:CreateTab("Home", "home")

local obbyToggle = hubTab:CreateToggle({
   Name = "Auto-Complete Obby",
   CurrentValue = false,
   Flag = "obbyToggle",
   Callback = function(Value)
   	afobby = Value
      while afobby == true do
      	if obby.Timer.BillboardGui.TextLabel.Visible == false then
      		char.HumanoidRootPart.CFrame = obby.WinPart.CFrame
      	end
         wait(30)
      end
   end,
})

local sellToggle = hubTab:CreateToggle({
   Name = "Auto-Sell Ice Cream",
   CurrentValue = false,
   Flag = "sellToggle",
   Callback = function(Value)
   	afsell = Value
      while afsell == true do
      	if tycoon.Essentials.ManualButtons.Machine.Timer.BillboardGui.Tag.Text == "" then
      	   char.HumanoidRootPart.CFrame = CFrame.new(tycoon.Essentials.ManualButtons.Machine.Main.CFrame.Position.X, 6, tycoon.Essentials.ManualButtons.Machine.Main.CFrame.Position.Z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
      	   fireproximityprompt(tycoon.Essentials.ManualButtons.Machine.Main.ProximityPrompt)
         else
      	   char.HumanoidRootPart.CFrame = CFrame.new(tycoon.Essentials.ManualButtons.Clicker.Main.CFrame.Position.X, 6, tycoon.Essentials.ManualButtons.Clicker.Main.CFrame.Position.Z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
      	   fireproximityprompt(tycoon.Essentials.ManualButtons.Clicker.Main.ProximityPrompt)
         end
         wait(0.25)
      end
   end,
})

local buyToggle = hubTab:CreateToggle({
   Name = "Auto-Buy Upgrades",
   CurrentValue = false,
   Flag = "buyToggle",
   Callback = function(Value)
   	afbuy = Value
      while afbuy == true do
      	for _, v in ipairs(tycoon.Buttons:GetChildren()) do
      		if v.Main.BillboardGui.Cost.Visible == true then
               if not string.find(v.Main.BillboardGui.Cost.Text, "R") then
      		      cost = string.gsub(v.Main.BillboardGui.Cost.Text, ",", "")
                  cost = string.gsub(cost, "%$", "")
                  bal = string.gsub(plr.leaderstats.Money.Value, ",", "")
                  if tonumber(bal) >= tonumber(cost) then
                     char.HumanoidRootPart.CFrame = CFrame.new(v.Main.CFrame.Position.X, 4, v.Main.CFrame.Position.Z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                  end
                  wait (0.25)
               end
            end
         end
      end
   end,
})

local Divider = hubTab:CreateDivider()
local factoryLabel = hubTab:CreateLabel("Factory: " .. plr.Team.Name, "factory")
local versionLabel = hubTab:CreateLabel("Version 08.25.26-600P", "info")

-- #=# Changelog Tab #=# -- 
local changelogTab = Window:CreateTab("Changelog", "list")

local v082526600P = changelogTab:CreateParagraph({Title = "Version 08.25.26-600P", Content = "- Created Sub Hub"})

Rayfield:LoadConfiguration()
