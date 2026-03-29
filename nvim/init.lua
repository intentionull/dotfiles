vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
})
require("catppuccin").setup({
  flavour = "latte",
  color_overrides = {
    latte = {
      base = "#ffffff",
    },
  },
})

vim.cmd("colorscheme catppuccin")

require("plugins")
require("config")
require("lsp")

