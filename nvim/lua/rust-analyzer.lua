lspconfig = require "lspconfig"
util = require "lspconfig/util"

lspconfig.rust_analyzer.setup {
	cmd = {"rust-analyzer"},
	filetypes = {"rust"},
	root_dir = util.root_pattern("Cargo.toml", "rust-project.json", ".cargo/config.toml"),
	settings = { ["rust-analyzer"] = {
                  imports = {
                  granularity = {
                     group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
    } },
}
