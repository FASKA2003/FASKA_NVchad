local on_attach = require("plugins.configs.lspconfig").on_attach 
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup(
  {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = lspconfig.util.root_pattern("Cargo.toml"),
  }
)
lspconfig.clangd.setup(
  {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"c"},
    }
)
lspconfig.cmake.setup(
  {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"CMakeLists.txt"},  
    root_dir = lspconfig.util.root_pattern("CMakeLists.txt", ".git"),
  }
)
