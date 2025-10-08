return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
	transparent_background = true, -- disables setting the background color.
	auto_integrations = true,
	flavour = "latte", -- latte, frappe, macchiato, mocha
	float = {
		transparent = false, -- enable transparent floating windows
		solid = true, -- use solid styling for floating windows, see |winborder|
	},
	-- term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	-- dim_inactive = {
	-- 	enabled = true, -- dims the background color of inactive window
	-- 	shade = "dark",
	-- 	percentage = 0.15, -- percentage of the shade to apply to the inactive window
	-- },
}
