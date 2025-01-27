local wezterm = require("wezterm")
local config = {}
local act = wezterm.action
local mux = wezterm.mux

-- config.color_scheme = "catppuccin-mocha"
-- config.color_scheme = 'Gruvbox dark, medium (base16)'
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Grayscale (light) (terminal.sexy)"
config.color_scheme = "Github (base16)"
-- config.color_scheme = 'Everforest Dark (Gogh)'
-- config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'Github Light (Gogh)'
-- config.colors = {
--   background = "white",
--   tab_bar = {
--     background = 'white',
--   },
-- }

-- config.font = wezterm.font("Iosevka Nerd Font Mono", { weight = "Regular" })
-- config.font = wezterm.font("ZedMono Nerd Font Mono")
-- config.font = wezterm.font("0xProto Nerd Font Mono")
-- config.font = wezterm.font("RecMonoSmCasual Nerd Font Mono")
-- config.font = wezterm.font("RecMonoLinear Nerd Font Mono")
-- config.font = wezterm.font("fantasquesansm nerd font mono")
config.font = wezterm.font("Inconsolata Nerd Font Mono")
-- config.font = wezterm.font("Twilio Sans Mono")
-- config.font = wezterm.font("DM Mono")
-- config.font = wezterm.font 'zedmono nerd font mono'
-- config.font = wezterm.font("blexmono nerd font mono")
-- config.font = wezterm.font("caskaydiamono nerd font mono")
config.font_size = 16
config.line_height = 1.2
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_decorations = "RESIZE"
config.switch_to_last_active_tab_when_closing_tab = true

-- wezterm.on('gui-attached', function(domain)
--   -- maximize all displayed windows on startup
--   local workspace = mux.get_active_workspace()
--   for _, window in ipairs(mux.all_windows()) do
--     if window:get_workspace() == workspace then
--       window:gui_window():maximize()
--     end
--   end
-- end)
-- wezterm.on("gui-attached", function()
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():toggle_fullscreen()
-- end)

-- config.default_prog = { '/usr/local/bin/fish' }

config.keys = {
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "v",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Left",
			-- command = { args = { 'top' } },
			size = { Percent = 50 },
		}),
	},
	{
		key = "b",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Down",
			-- command = { args = { 'top' } },
			size = { Percent = 50 },
		}),
	},
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{ key = "[", mods = "CMD|SHIFT", action = act.ActivateTabRelative(-1) },
	{ key = "]", mods = "CMD|SHIFT", action = act.ActivateTabRelative(1) },
	{
		key = "t",
		mods = "CMD|SHIFT",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	{ key = "f", mods = "ALT", action = wezterm.action.ToggleFullScreen },
	{ key = "l", mods = "ALT", action = wezterm.action.ShowLauncher },
	{
		key = "f",
		mods = "CMD|SHIFT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	{
		key = "c",
		mods = "CMD|SHIFT",
		action = act.PromptInputLine({
			description = wezterm.format({
				{ Attribute = { Intensity = "Bold" } },
				{ Foreground = { AnsiColor = "Fuchsia" } },
				{ Text = "Enter name for new workspace" },
			}),
			action = wezterm.action_callback(function(window, pane, line)
				-- line will be `nil` if they hit escape without entering anything
				-- An empty string if they just hit enter
				-- Or the actual line of text they wrote
				if line then
					window:perform_action(
						act.SwitchToWorkspace({
							name = line,
						}),
						pane
					)
				end
			end),
		}),
	},
}

-- wezterm.on("gui-startup", function()
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():toggle_fullscreen()
-- end)

config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 144

return config
