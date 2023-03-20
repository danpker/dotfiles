require('plugins')
require('settings')
require('mappings')
require('telescope_options')
require('lualine_options')
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
}
require("treesitter_options")
require("lsp_options")
require("gruvbox_options")
