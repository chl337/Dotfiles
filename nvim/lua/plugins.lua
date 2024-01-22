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
--    -- TODO
--    -- neo-tree (File Explorer)
--   -- {
--    --    "nvim-tree/nvim-tree.lua",
--     --   version = "*",
--      --  lazy = false,
--       -- dependencies = {
--        --  "nvim-tree/nvim-web-devicons",
--       -- },
--   -- },
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
    },
  -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },
--  -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
    },
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
}
