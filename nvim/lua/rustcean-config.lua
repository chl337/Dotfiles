vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      -- your LSP keymaps here
    end,
    settings = {
      ['rust-analyzer'] = {
        cargo = { allFeatures = true },
      },
    },
  },
}

