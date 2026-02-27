vim.pack.add {
  { src = 'https://github.com/neovim/nvim-lspconfig' },
}
vim.lsp.enable({
  "bashls",
  "gopls",
  "lua_ls",
  "ts_ls",
  'shopify_theme_ls',
  'gh_actions_ls',
  'oxfmt',
  'oxlint',
  'tailwindcss',
  'cssls',
  'cssmodules_ls',
  'css_variables',
  'somesass_ls',
  'html',
  'sqlls',
  'nxls'
})
vim.diagnostic.config({ virtual_text = true })

vim.lsp.on_type_formatting.enable()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('cssls', {
  capabilities = capabilities,
})
vim.lsp.config('html', {
  capabilities = capabilities,
})
