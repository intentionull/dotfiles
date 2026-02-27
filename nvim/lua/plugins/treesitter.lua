vim.pack.add({
  {src='https://github.com/nvim-treesitter/nvim-treesitter'}
})


require'nvim-treesitter'.setup {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  install_dir = vim.fn.stdpath('data') .. '/site'
}
require('nvim-treesitter').install({ 'yaml', 'javascript', 'typescript', 'lua', 'liquid', 'go' })
