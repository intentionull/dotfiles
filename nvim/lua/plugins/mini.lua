return {
	"echasnovski/mini.nvim",
	version = "*",
	config = function()
		require("mini.icons").setup()
		require("mini.files").setup()
		require("mini.pick").setup({
			options = {
				use_cache = true,
			},
		})
		require("mini.indentscope").setup()
		require("mini.surround").setup()
	end,
}
