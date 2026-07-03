-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)
for i = 1, 5 do
    hl.workspace_rule({ workspace = tostring(i), monitor = mainMonitor })
end

for i = 6, 10 do
    hl.workspace_rule({ workspace = tostring(i), monitor = secMonitor, gaps_in = 0, gaps_out = 0 })
end

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- apps
hl.window_rule({
	name = "qBittorrent",
	match = { class = "org.qbittorrent.qBittorrent" },
	workspace = "8",
})

hl.window_rule({
	name = "discord",
	match = { class = "discord" },
	workspace = "6",
})

hl.window_rule({
	name = "zapzap",
	match = { class = "com.rtosta.zapzap" },
	workspace = "6",
})