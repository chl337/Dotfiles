return {
  -- Plugins will be added here accordingly.
  -- Bufferline 
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
--  -- Colorescheme
    {
        'folke/tokyonight.nvim',
    },
-- -- Hop (Better Navigation)
    {
        'smoka7/hop.nvim',
        version = "*",
        opts = {},
        lazy = true,
    },
--  -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
-- -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional

            -- Rust
            {'simrat39/rust-tools.nvim'},     -- Rust LSP
        }
    },
    -- Markdown
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    -- Rustaceanvim
        -- TODO: replace rust-tools
   -- {
   --     'mrcjkb/rustaceanvim',
   --     version = '^3', -- Recommended
   --     ft = { 'rust' },
   --  },
      -- File-explorer
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
                -- "3rd/image.nvim", -- Optional image support in preview window: 
                        -- See `# Preview Mode` for more information
        }
    },
--    -- Telescope (Fuzzy Finder)
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },
--    -- Alpha (Dashboard)
    {
        "goolord/alpha-nvim",
        lazy = false,
        dependencies = {
                {'nvim-tree/nvim-web-devicons'},
                { 'echasnovski/mini.nvim', version = '*' },
        }
    },
  -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },
--  -- Treesitter
   -- {
   --     "nvim-treesitter/nvim-treesitter",
   --     dependencies = { "tadmccorkle/markdown.nvim" },
   --    -- config = function()
   --    -- require("nvim-treesitter.configs").setup({
   --    --         ensure_installed = { "markdown", "markdown_inline", --[[ other parsers you need ]] },
   --    --         markdown = {
   --    --                 enable = true,
   --    --         -- configuration here or nothing for defaults
   --    --         },
   --    -- })
   --    -- end,
   -- },
-- -- Toggle Term
    {
        'akinsho/toggleterm.nvim',
        config = true
    },
-- -- Undo Tree
    {
        "jiaoshijie/undotree",
        dependencies  = {
            "nvim-lua/plenary.nvim",
        },
    },
-- -- Git Integration
    {
        "lewis6991/gitsigns.nvim",
    },
-- -- Diff
    {
        "sindrets/diffview.nvim",
        dependencies = "nvim-lua/plenary.nvim",
    },
    {
      'stevearc/aerial.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         "nvim-tree/nvim-web-devicons"
      },
    },
-- -- cscope
    {
        "dhananjaylatkar/cscope_maps.nvim",
        dependencies = {
                "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
                "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
                "echasnovski/mini.pick", -- optional [for picker="mini-pick"]
                "folke/snacks.nvim", -- optional [for picker="snacks"]
        },
        opts = {
        -- USE EMPTY FOR DEFAULT OPTIONS
        -- DEFAULTS ARE LISTED BELOW
        },
    },
-- -- gutentags
    {
      "ludovicchabant/vim-gutentags",
      init = function()
        vim.g.gutentags_modules = {"cscope_maps"} -- This is required. Other config is optional
        vim.g.gutentags_cscope_build_inverted_index_maps = 1
        vim.g.gutentags_cache_dir = vim.fn.expand("~/code/.gutentags")
        vim.g.gutentags_file_list_command = "fd -e c -e h"
        -- vim.g.gutentags_trace = 1
      end,
    },
-- -- ssh
    {
        "nosduco/remote-sshfs.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        opts = {
        -- Refer to the configuration section below
        -- or leave empty for defaults
                },
        },
}
