vim.pack.add({
	{ src = "https://github.com/nvim-mini/mini.nvim" },
})
require("mini.files").setup()
require("mini.pick").setup()
require("mini.surround").setup()
require("mini.indentscope").setup()
require("mini.pairs").setup()
require("mini.statusline").setup()
require("mini.comment").setup()
require('mini.completion').setup()
require('mini.icons').setup()

local gen_loader = require('mini.snippets').gen_loader
require('mini.snippets').setup({
  snippets = {
    -- Load custom file with global snippets first (adjust for Windows)
    gen_loader.from_file('~/.config/nvim/snippets/global.json'),

    -- Load snippets based on current language by reading files from
    -- "snippets/" subdirectories from 'runtimepath' directories.
    gen_loader.from_lang(),
  },
})


