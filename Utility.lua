local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- #=# UI #=# --
local Window = Rayfield:CreateWindow({
   Name = "Kryon Utility",
   Icon = 0,
   LoadingTitle = "Kryon Utility",
   LoadingSubtitle = "by v3rt3x",
   ShowText = "Kryon Utility",
   Theme = "Default", 

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "KryonUtility"
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

-- #=# Home Tab #=# --
local homeTab = Window:CreateTab("Home", "home")

local InfiniteYield = homeTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Dex = homeTab:CreateButton({
   Name = "Dex++",
   Callback = function()
      loadstring(game:HttpGet("https://gist.githubusercontent.com/BROgenesis/958c1fee7d8ad100da7f7d020d5d67f3/raw/8dc95caca1b46aa9f4d9dd2433f6be3d9bc69e45/Dex++"))()
   end,
})

local Cobalt = homeTab:CreateButton({
   Name = "Cobalt",
   Callback = function()
      loadstring(game:HttpGet("https://gitlab.com/upio/cobalt/-/releases/permalink/latest/downloads/Cobalt.luau"))()
   end,
})

local SubplaceFinder = homeTab:CreateButton({
   Name = "Subplace Finder",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ADSKerOffical/BHUOriginal/refs/heads/main/Guis/SubplaceFinder"))()
   end,
})

local ProductFucker = homeTab:CreateButton({
   Name = "Product Fucker",
   Callback = function()
      loadstring(game:HttpGet("https://robloxscripts.com/raw/product-fucker-free-product-buyer"))()
   end,
})

local Divider = homeTab:CreateDivider()
local versionLabel = homeTab:CreateLabel("Version 08.25.26-1100P", "info")

-- #=# Changelog Tab #=# -- 
local changelogTab = Window:CreateTab("Changelog", "list")

local v0825261100P = changelogTab:CreateParagraph({Title = "Version 08.25.26-1100P", Content = "- Created Utility Hub\n+ Added Infinite Yeild\n+ Added Dex++\n+ Added Cobalt\n+ Added Subplace Finder\n+ Added Product Fucker"})

-- #=# Settings Tab #=# --
local settingsTab = Window:CreateTab("Settings", "settings")

local DestroyUI = settingsTab:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})
