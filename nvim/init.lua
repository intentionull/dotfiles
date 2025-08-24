vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"


-- Plugins
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/echasnovski/mini.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim"},
	{ src = "https://github.com/saghen/blink.cmp",                build = 'cargo +nightly build --release' },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", branch = 'main',                         build = ":TSUpdate" }
})

-- Plugins Init
require("mini.files").setup()
require("mini.pick").setup()
require("mini.icons").setup()
require("oil").setup()

-- require "oil".setup()

-- LSP
vim.lsp.enable({ "lua_ls", "html", "prismals", "tailwindcss", "ts_ls", "nxls", "jsonls", "shopify_theme_ls" })

-- Keymaps
-----------------------------
-- Utils
vim.keymap.set("n", "<leader>so", ":update<CR> :source<CR>")

-- File Ops
vim.keymap.set("n", "<leader>fw", ":write<CR>")
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fh", ":Pick help<CR>")
vim.keymap.set("n", "<leader><leader>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>")

-- LSP
vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)


vim.keymap.set("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>')

-----------------------------

require('blink.cmp').setup({
	fuzzy = { implementation = 'prefer_rust_with_warning' },
	signature = { enabled = true },
	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 0,
		}
	},

	cmdline = {
		keymap = {
			preset = 'inherit',
			['<CR>'] = { 'accept_and_enter', 'fallback' },
		},
	},
	sources = { default = { "lsp" } }
})




-- Colorscheme
require "catppuccin".setup({
	show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
	transparent_background = true, -- disables setting the background color.
	auto_integrations = true,
})
vim.cmd("colorscheme catppuccin-latte")
vim.cmd(":hi statusline guibg=NONE")
