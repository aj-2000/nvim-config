local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  file_types = { "rust" },
  root_dir = util.root_pattern("Cargo.toml"),
    settings= {
        ["rust-analyzer"] = {
            checkOnSave = {
                command = "clippy",
            },
            cargo = {
                allFeatures = true,
            }
        },
    },
})
