vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.opts")
require("config.lazy")
require("config.keymaps")
require("config.autocmds")

-- LSP
-- vim.lsp.enable({ "lua_ls", "html", "prismals", "tailwindcss", "ts_ls", "nxls", "jsonls", "shopify_theme_ls" })

-- Keymaps
-----------------------------
-----------------------------

-- vim.api.nvim_create_autocmd("BufWritePre", {
-- 	pattern = "*",
-- 	callback = function(args)
-- 		require("conform").format({ bufnr = args.buf })
-- 	end,
-- })

vim.diagnostic.config({
	virtual_lines = true,
	-- virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚 ",
			[vim.diagnostic.severity.WARN] = "󰀪 ",
			[vim.diagnostic.severity.INFO] = "󰋽 ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

vim.cmd("colorscheme catppuccin-latte")
vim.cmd(":hi statusline guibg=NONE")
