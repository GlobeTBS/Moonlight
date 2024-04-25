local Library = loadstring(game:HttpGet("https://hideout.one/api/cdn/library"))()
local ThemeManager = loadstring(game:HttpGet('https://hideout.one/api/cdn/theme_manager'))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/addons/SaveManager.lua"))()

local Window = Library:CreateWindow({ Title = "Moonlight Hub | Version: 4.2 | Game: Criminality", Center = true, AutoShow = true, TabPadding = 8, MenuFadeTime = 0.2 })

local RageBot = Window:AddTab("Rage Bot") do 
	local ragebot = RageBot:AddLeftGroupbox("rage bot") do 
		ragebot:AddToggle("rage_bot_enabled", { Text = "rage bot enabled" })

		ragebot:AddDivider()

		ragebot:AddToggle("rage_bot_ignore_downed", { Text = "ignore downed" })
		ragebot:AddToggle("rage_bot_ignore_forcefield", { Text = "ignore forcefield" })
		ragebot:AddToggle("rage_bot_visible_check", { Text = "visible check" })
		ragebot:AddToggle("rage_bot_fire_sound", { Text = "fire sound" })
		ragebot:AddToggle("rage_bot_notification_logs", { Text = "notification logs" })
		ragebot:AddDropdown("rage_bot_BodyParts", { Text = "body parts", Values = { "Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg" }, Default = "Head", Multi = true, AllowNull = false })
		ragebot:AddSlider("rage_bot_head_chance", { Text = "head chance", Default = 33, Min = 1, Max = 100, Rounding = 1 })
		ragebot:AddSlider("rage_bot_max_distance", { Text = "maximum distance", Default = 200, Min = 1, Max = 1000, Rounding = 1 })
	end
end
