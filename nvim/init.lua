vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"
-- vim.opt.winborder = "rounded"



require("config.lazy")

-- Plugins

-- Plugins Init

-- use a release tag to download pre-built binaries

-- LSP
-- vim.lsp.enable({ "lua_ls", "html", "prismals", "tailwindcss", "ts_ls", "nxls", "jsonls", "shopify_theme_ls" })

-- Keymaps
-----------------------------
-- Utils
vim.keymap.set("n", "<leader>so", ":update<CR> :source<CR>")

-- File Ops
vim.keymap.set("n", "<leader>fw", ":write<CR>")
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>")
vim.keymap.set("n", "<leader><leader>", ":lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>bd", ":bd<CR>")

vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")

-- LSP
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)


vim.keymap.set("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>')

-----------------------------

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})


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
