return {

    ---------------------------------------------------------------------------
    -- Colorscheme
    ---------------------------------------------------------------------------
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("tokyonight-night")
        end,
    },

    ---------------------------------------------------------------------------
    -- Treesitter
    ---------------------------------------------------------------------------
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter.config").setup({
                ensure_installed = {
                    "c",
                    "cpp",
                    "lua",
                    "rust",
                    "python",
                    "bash",
                    "make",
                    "vim",
                    "vimdoc",
                    "query",
                    "markdown",
                    "markdown_inline",
                },
                sync_install = false,
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                indent = {
                    enable = true,
                    disable = { "yaml" },
                },
            })
        end,
    },
    ---------------------------------------------------------------------------
    -- Bufferline
    ---------------------------------------------------------------------------
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    ---------------------------------------------------------------------------
    -- Hop
    ---------------------------------------------------------------------------
    {
        "smoka7/hop.nvim",
        version = "*",
        opts = {},
    },

    ---------------------------------------------------------------------------
    -- Lualine
    ---------------------------------------------------------------------------
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    ---------------------------------------------------------------------------
    -- LSP / Completion
    ---------------------------------------------------------------------------
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v4.x",

        dependencies = {

            -- LSP
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Completion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "hrsh7th/cmp-nvim-lua" },
            { "saadparwaiz1/cmp_luasnip" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    },

    ---------------------------------------------------------------------------
    -- Rustaceanvim
    ---------------------------------------------------------------------------
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        ft = { "rust" },
    },

    ---------------------------------------------------------------------------
    -- Neo-tree
    ---------------------------------------------------------------------------
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",

        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },

    ---------------------------------------------------------------------------
    -- Telescope
    ---------------------------------------------------------------------------
    {
        "nvim-telescope/telescope.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    ---------------------------------------------------------------------------
    -- Alpha Dashboard
    ---------------------------------------------------------------------------
    {
        "goolord/alpha-nvim",
        lazy = false,

        dependencies = {
            "nvim-tree/nvim-web-devicons",
            { "echasnovski/mini.nvim", version = "*" },
        },
    },

    ---------------------------------------------------------------------------
    -- Which-key
    ---------------------------------------------------------------------------
    {
        "folke/which-key.nvim",
    },

    ---------------------------------------------------------------------------
    -- Toggleterm
    ---------------------------------------------------------------------------
    {
        "akinsho/toggleterm.nvim",
        config = true,
    },

    ---------------------------------------------------------------------------
    -- UndoTree
    ---------------------------------------------------------------------------
    {
        "jiaoshijie/undotree",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    ---------------------------------------------------------------------------
    -- Git Signs
    ---------------------------------------------------------------------------
    {
        "lewis6991/gitsigns.nvim",
    },

    ---------------------------------------------------------------------------
    -- Diffview
    ---------------------------------------------------------------------------
    {
        "sindrets/diffview.nvim",

        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    ---------------------------------------------------------------------------
    -- Aerial
    ---------------------------------------------------------------------------
    {
        "stevearc/aerial.nvim",

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },

        opts = {},
    },

    ---------------------------------------------------------------------------
    -- Cscope
    ---------------------------------------------------------------------------
    {
        "dhananjaylatkar/cscope_maps.nvim",

        dependencies = {
            "nvim-telescope/telescope.nvim",
            "ibhagwan/fzf-lua",
            "echasnovski/mini.pick",
            "folke/snacks.nvim",
        },

        opts = {},
    },

    ---------------------------------------------------------------------------
    -- Gutentags
    ---------------------------------------------------------------------------
    {
        "ludovicchabant/vim-gutentags",

        init = function()
            vim.g.gutentags_modules = { "cscope_maps" }
            vim.g.gutentags_cscope_build_inverted_index_maps = 1
            vim.g.gutentags_cache_dir =
                vim.fn.expand("~/code/.gutentags")

            vim.g.gutentags_file_list_command =
                "fd -e c -e h"
        end,
    },

    ---------------------------------------------------------------------------
    -- SSHFS
    ---------------------------------------------------------------------------
    {
        "nosduco/remote-sshfs.nvim",

        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },

        opts = {},
    },
}
