return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    config = function()
      require("catppuccin").setup()
      vim.opt.background = "light"
      vim.cmd("colorscheme catppuccin-latte")
    end,
  },
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("bamboo").setup({
  --       -- optional configuration here
  --       style = "light",
  --     })
  --     require("bamboo").load()
  --   end,
  -- },
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function() end,
  -- },
  -- {
  --   "sainnhe/gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   config = function() end,
  -- },
  -- {
  --   "yorickpeterse/nvim-grey",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- vim.cmd("colorscheme grey")
  --   end,
  -- },
  -- {
  --   "gmr458/cold.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- vim.cmd("colorscheme grey")
  --   end,
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- vim.opt.background = "light"
  --     -- vim.cmd("colorscheme onelight")
  --   end,
  -- },
  --
  --   {
  --     "projekt0n/github-nvim-theme",
  --     name = "github-theme",
  --     lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --     priority = 1000, -- make sure to load this before all the other start plugins
  --     config = function()
  --       require("github-theme").setup({
  --         -- ...
  --       })
  --     end,
  --   },
}
