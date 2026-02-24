local wezterm = require("wezterm")
local config = {}
local act = wezterm.action
-- local mux = wezterm.mux

config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = 'Gruvbox dark, medium (base16)'
-- config.color_scheme = "Gruvbox Material (Gogh)"
-- config.color_scheme = "Grayscale (light) (terminal.sexy)"
-- config.color_scheme = "Github (base16)"
-- config.color_scheme = 'Everforest Dark (Gogh)'
-- config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'Github Light (Gogh)'

-- config.font = wezterm.font("Iosevka Nerd Font Mono")
-- config.font = wezterm.font("IosevkaTerm Nerd Font Mono")
config.font = wezterm.font("Pragmasevka Nerd Font")
-- config.font = wezterm.font("ZedMono Nerd Font Mono")
-- config.font = wezterm.font("geistmono Nerd Font Mono")
-- config.font = wezterm.font("RecMonoSmCasual Nerd Font Mono")
-- config.font = wezterm.font("RecMonoLinear Nerd Font Mono")
-- config.font = wezterm.font("fantasquesansm nerd font mono")
-- config.font = wezterm.font("caskaydiacove nerd font mono")
-- config.font = wezterm.font("Inconsolata Nerd Font Mono")
-- config.font = wezterm.font("Twilio Sans Mono")
-- config.font = wezterm.font("DM Mono")
-- config.font = wezterm.font("zedmono nerd font mono")
-- config.font = wezterm.font("blexmono nerd font mono")
-- config.font = wezterm.font("CommitMono Nerd Font Mono")
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.font = wezterm.font("Zenbones Brainy")
-- config.font = wezterm.font("Zenbones Proto")
-- config.font = wezterm.font("Zenbones Mono")
-- config.font = wezterm.font("MartianMono Nerd Font Mono")
-- config.font = wezterm.font("caskaydiamono nerd font mono")
-- config.font = wezterm.font("geistmono nerd font mono")
config.font_size = 18
config.line_height = 1
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.freetype_load_flags = "NO_HINTING"
config.window_background_opacity = 1.0
config.enable_tab_bar = false
config.bidi_enabled = true
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

config.term = "tmux-256color"

-- config.colors = {
-- 	background = "#ffffff",
-- 	-- tab_bar = {
-- 	-- 	background = "white",
-- 	-- },
-- }
return config
