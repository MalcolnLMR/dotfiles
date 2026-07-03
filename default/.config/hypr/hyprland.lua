require("hyprland.variables")
require("hyprland.laptop")

------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
if not (isLaptop) then
	hl.monitor({
		output = mainMonitor,
		mode = "1920x1080@144",
		position = "0x0",
		scale = "1",
	})

	hl.monitor({
		output = secMonitor,
		mode = "1920x1080@75",
		position = "1920x0",
		scale = "1",
	})
else
	hl.monitor({
		output = mainMonitor,
		mode = "1920x1200@60",
		position = "0x0",
		scale = "1",
	})

	hl.monitor({
		output = secMonitor,
		mode = "4096x2160@60",
		position = "-4096x0",
		scale = "1",
	})
end


-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Processes
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar & hyprpaper")
end)

-- Favorite Apps
if not (isLaptop) then
	hl.on("hyprland.start", function()
		hl.exec_cmd("qbittorrent")
		hl.exec_cmd("discord-canary")
	end)
else
	hl.on("hyprland.start", function()
		hl.exec_cmd("discord-canary")
	end)
end


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("GTK_THEME", "Adwaita:dark")

-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("hyprland.looks")

----------------
----  MISC  ----
----------------

hl.config({
	misc = {
		force_default_wallpaper = -1, -- Set to 0 or 1 to disable the anime mascot wallpapers
		disable_hyprland_logo = false, -- If true disables the random hyprland logo / anime girl background. :(
	},
})

---------------
---- INPUT ----
---------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.config({
	input = {
		kb_layout = "br",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		numlock_by_default = true,

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

---------------------
---- KEYBINDINGS ----
---------------------

require("hyprland.binds_default")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("hyprland.windows")
