vim.g.rustaceanvim = {
    tools = {
        enable_auto_toolchain = false,
    },

    server = {
        on_attach = function(client, bufnr)
            -- Rust LSP keymaps here
        end,

        settings = {
            ['rust-analyzer'] = {
                cargo = {
                    allFeatures = true,
                },

                check = {
                    command = 'clippy',
                },

                procMacro = {
                    enable = true,
                },
            },
        },
    },
}
