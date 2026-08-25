local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- #-# Variables #=# --
local plr = game.Players.LocalPlayer
local char = plr.Character

-- #=# UI #=# --
local Window = Rayfield:CreateWindow({
   Name = "Kryon",
   LoadingTitle = "Kryon",
   LoadingSubtitle = "by v3rt3x",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "Kryon",
      FileName = "Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Kryon | Key System",
      Subtitle = "",
      Note = "Kryon is keyless.",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false, 
      Key = {"Key"}
   }
})

-- #=# Home Tab #=# --
local homeTab = Window:CreateTab("Home", "home")

local PlayerSpeed = homeTab:CreateInput({
    Name = "Speed",
    PlaceholderText = "16",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        char.Humanoid.WalkSpeed = Text
    end,
})

local PlayerJumpPower = homeTab:CreateInput({
    Name = "Jump Power",
    PlaceholderText = "50",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        char.Humanoid.JumpPower = Text
    end,
})

local Divider = homeTab:CreateDivider()

local changelogLabel = Tab:CreateLabel("Changelog", "list")
local v082526550P = homeTab:CreateParagraph({Title = "Version 08.25.26-550P", Content = "- Created Kryon\n+ Added Ice Cream Factory Tycoon to Games List"})

local Divider = homeTab:CreateDivider()
local versionLabel = homeTab:CreateLabel("Version 08.25.26-550P", "info")

-- #=# Animation Tab #=# --
local animationTab = Window:CreateTab("Animations", "person-standing")

local Animations = animationTab:CreateSection("Animations")
local Note = animationTab:CreateLabel("Coming in a Future Update")

local AnimationPack = animationTab:CreateSection("Animation Packs")
local AnimationPackNotice = animationTab:CreateParagraph({Title = "Attention", Content = "Animation Packs only work in R15, using this to change your animation pack in R6 will break your animations!"})

local function StopAnim()
   char.Animate.Disabled = false
   local animtrack = char.Humanoid:GetPlayingAnimationTracks()
   for i, track in pairs (animtrack) do
      track:Stop()
   end
end

local Vampire = animationTab:CreateButton({
   Name = "Vampire Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Hero = animationTab:CreateButton({
   Name = "Hero Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Zombie = animationTab:CreateButton({
   Name = "Zombie Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Mage = animationTab:CreateButton({
   Name = "Mage Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Ghost = animationTab:CreateButton({
   Name = "Ghost Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Elder = animationTab:CreateButton({
   Name = "Elder Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Levitation = animationTab:CreateButton({
   Name = "Levitation Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Astronaut = animationTab:CreateButton({
   Name = "Astronaut Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Ninja = animationTab:CreateButton({
   Name = "Ninja Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Werewolf = animationTab:CreateButton({
   Name = "Werewolf Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Cartoon = animationTab:CreateButton({
   Name = "Cartoon Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Pirate = animationTab:CreateButton({
   Name = "Pirate Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Sneaky = animationTab:CreateButton({
   Name = "Sneaky Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Toy = animationTab:CreateButton({
   Name = "Toy Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Knight = animationTab:CreateButton({
   Name = "Knight Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Confident = animationTab:CreateButton({
   Name = "Confident Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Popstar = animationTab:CreateButton({
   Name = "Popstar Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Princess = animationTab:CreateButton({
   Name = "Princess Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Cowboy = animationTab:CreateButton({
   Name = "Cowboy Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local Patrol = animationTab:CreateButton({
   Name = "Patrol Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

local FEZombie = animationTab:CreateButton({
   Name = "FE Zombie Animation Pack",
   Callback = function()
      local Animate = char.Animate
      Animate.Disabled = true
      StopAnim()
      Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
      Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
      Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3489174223"
      Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
      Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
      Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
      Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
      char.Humanoid:ChangeState(3)
      Animate.Disabled = false
   end,
})

-- #=# Games Tab #=# --
local gamesTab = Window:CreateTab("Games", "gamepad")

local IceCreamFactoryTycoon = gamesTab:CreateButton({
   Name = "Ice Cream Factory Tycoon",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/yaboi-v3rt3x/Kryon/main/games/IceCreamFactoryTycoon.lua"))()
   end,
})

-- #=# Settings Tab #=# --
local settingsTab = Window:CreateTab("Settings", "settings")

local autoOpen = settingsTab:CreateToggle({
   Name = "Auto-Open Game Hubs",
   CurrentValue = false,
   Flag = "autoOpen",
   Callback = function(Value)
      if Value == true then
         print("[Kryon] Auto-Open Enabled!") -- Not yet added!
      end
   end,
})

local DestroyUI = settingsTab:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})
