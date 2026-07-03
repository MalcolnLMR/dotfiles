-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

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

-- Workspace configuration
for i = 1, 5 do
    hl.workspace_rule({ workspace = tostring(i), monitor = mainMonitor })
end

for i = 6, 10 do
    hl.workspace_rule({ workspace = tostring(i), monitor = secMonitor, gaps_in = 0, gaps_out = 0 })
end