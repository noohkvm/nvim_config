require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer" , "jdtls", "clangd"},
}
local lsp = require('lsp-zero')
lsp.extend_cmp()

require('lspconfig').tsserver.setup({
    on_attach = function(client, bufnr)
      lsp.default_keymaps({buffer = bufnr})
    end
  })

require("lspconfig").lua_ls.setup {}

local util = require 'lspconfig.util'
-- require("lspconfig").jdtls.setup {
--     cmd = {
--         'java',
--         '-Declipse.application=org.eclipse.jdt.ls.core.id1',
--         '-Dosgi.bundles.defaultStartLevel=4',
--         '-Declipse.product=org.eclipse.jdt.ls.core.product',
--         '-Dlog.protocol=true',
--         '-Dlog.level=ALL',
--         '-Xms1g',
--         '--add-modules=ALL-SYSTEM',
--         '--add-opens', 'java.base/java.util=ALL-UNNAMED',
--         '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
--         '-jar', '/Users/noohkvm/.local/share/nvim/lsp_servers/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
--         '-configuration', '/Users/noohkvm/.local/share/nvim/lsp_servers/jdtls/config_mac',
--         '-data', '~/.cache/jdtls'
--       },
--       root_dir = util.root_pattern { "gradlew" },
--       capabilities = capabilities,
--       on_attach = on_attach,

--             settings = {
--               java = {

--               },
--         }
-- }
require("lspconfig").clangd.setup {
    root_dir = util.root_pattern { ".git" },
    capabilities = capabilities
}

require("lspconfig").jdtls.setup {
  root_dir = util.root_pattern { "gradlew" },
  capabilities = capabilities
}
