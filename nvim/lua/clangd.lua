lspconfig = require "lspconfig"
util = require "lspconfig/util"

lspconfig.clangd.setup {
	cmd = {"clangd"},
	filetypes = {"c", "cpp", "objc", "objcpp", "h", "hpp"},
	root_dir = util.root_pattern(".clangd", ".clang-tidy",
				     ".clang-format", "compile_commands.json",
				     "compile_flags.txt", "configure.ac",
				     "git"),
	single_file_support = true,
	}

