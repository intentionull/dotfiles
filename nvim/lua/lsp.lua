vim.lsp.enable({
	"bashls",
	"gopls",
	"gofumpt",
	"lua_ls",
	"ts_ls",
	"shopify_theme_ls",
	"gh_actions_ls",
	"oxfmt",
	"oxlint",
	"tailwindcss",
	"cssls",
	"cssmodules_ls",
	"css_variables",
	"somesass_ls",
	"html",
	"sqlls",
	"nxls",
	"jsonls",
	"stylua",
  "templ",
})

-- -- vim.lsp.on_type_formatting.enable()
--
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
--
-- vim.lsp.config("cssls", {
-- 	capabilities = capabilities,
-- })
-- vim.lsp.config("html", {
-- 	capabilities = capabilities,
-- })
-- vim.lsp.config("jsonls", {
-- 	capabilities = capabilities,
-- })
--
--
-- vim.lsp.config("tailwindcss", {
-- 	filetypes = {
-- 		"html",
-- 		"css",
-- 		"scss",
-- 		"javascript",
-- 		"javascriptreact",
-- 		"typescript",
-- 		"typescriptreact",
-- 		"vue",
-- 		"svelte",
-- 	},
-- })
--
vim.diagnostic.config({ virtual_text = true })
