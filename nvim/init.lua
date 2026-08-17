vim.g.terminal_emulator = "/bin/bash"

-- Core
require "options"
require "keymaps"
require "lazy-config"

-- LSP + Rust
require "lsp-config"
require "rustcean-config"

-- UI / Navigation
require "alpha-config"
require "nvim-neo-tree-config"
require "hop-config"
require "lualine-config"
require "telescope-config"
--require "treesitter-config"
require "toggleterm-config"
require "bufferline-config"
require "undotree-config"
require "git-config"
require "whichkey"
require "diff"
require "aerial-config"
require "cscope-config"
require "ssh-config"
