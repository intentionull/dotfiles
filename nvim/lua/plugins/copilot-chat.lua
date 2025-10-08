return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},
	build = "make tiktoken",
	config = function(_, opts)
		vim.ui.select = require("mini.pick").ui_select
		return
	end,
}
