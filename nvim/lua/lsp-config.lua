-- lsp-config.lua
-- Rust LSP
--vim.lsp.enable('rust_analyzer')
local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
  },

  root_markers = {
    "compile_commands.json",
    "compile_flags.txt",
    ".clangd",
    ".git",
  },
})

vim.lsp.enable({
  "clangd",
  "rust_analyzer",
})
