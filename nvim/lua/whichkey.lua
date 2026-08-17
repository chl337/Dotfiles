local wk = require("which-key")

wk.setup({
    win = {
        border = "rounded",
        padding = { 1, 2 },
    },

    layout = {
        spacing = 6,
    },

    icons = {
        mappings = true,
    },

    triggers = {
        { "<auto>", mode = "nixsotc" },
    },
})

wk.add({

    ----------------------------------------------------------------------------
    -- General
    ----------------------------------------------------------------------------

    {
        "<leader>a",
        "<cmd>Alpha<CR>",
        desc = "Alpha",
    },

    {
        "<leader>m",
        "<cmd>Mason<CR>",
        desc = "Mason",
    },

    {
        "<leader>p",
        "<cmd>Lazy<CR>",
        desc = "Plugin Manager",
    },

    {
        "<leader>u",
        "<cmd>lua require('undotree').toggle()<CR>",
        desc = "Undo Tree",
    },

    {
        "<leader>w",
        "<cmd>w!<CR>",
        desc = "Save",
    },

    {
        "<leader>q",
        "<cmd>wqall!<CR>",
        desc = "Quit",
    },

    {
        "<leader>k",
        "<cmd>bdelete<CR>",
        desc = "Kill Buffer",
    },

    {
        "<leader>r",
        "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
        desc = "Format Code",
    },

    ----------------------------------------------------------------------------
    -- File Search
    ----------------------------------------------------------------------------

    {
        "<leader>f",
        group = "File Search",
    },

    {
        "<leader>ff",
        "<cmd>lua require('telescope.builtin').find_files()<CR>",
        desc = "Find Files",
    },

    {
        "<leader>fr",
        "<cmd>Telescope oldfiles<CR>",
        desc = "Recent Files",
    },

    {
        "<leader>ft",
        "<cmd>Telescope live_grep<CR>",
        desc = "Live Grep",
    },

    {
        "<leader>fc",
        "<cmd>Telescope colorscheme<CR>",
        desc = "Colorscheme",
    },

    ----------------------------------------------------------------------------
    -- Search
    ----------------------------------------------------------------------------

    {
        "<leader>s",
        group = "Search",
    },

    {
        "<leader>sc",
        "<cmd>Telescope commands<CR>",
        desc = "Commands",
    },

    {
        "<leader>sh",
        "<cmd>Telescope help_tags<CR>",
        desc = "Help Tags",
    },

    {
        "<leader>sk",
        "<cmd>Telescope keymaps<CR>",
        desc = "Keymaps",
    },

    {
        "<leader>sm",
        "<cmd>Telescope man_pages<CR>",
        desc = "Man Pages",
    },

    {
        "<leader>sr",
        "<cmd>Telescope registers<CR>",
        desc = "Registers",
    },

    ----------------------------------------------------------------------------
    -- Git
    ----------------------------------------------------------------------------

    {
        "<leader>g",
        group = "Git",
    },

    {
        "<leader>gb",
        "<cmd>Telescope git_branches<CR>",
        desc = "Branches",
    },

    {
        "<leader>gc",
        "<cmd>Telescope git_commits<CR>",
        desc = "Commits",
    },

    {
        "<leader>gd",
        "<cmd>Gitsigns diffthis HEAD<CR>",
        desc = "Diff",
    },

    {
        "<leader>gj",
        "<cmd>lua require('gitsigns').next_hunk()<CR>",
        desc = "Next Hunk",
    },

    {
        "<leader>gk",
        "<cmd>lua require('gitsigns').prev_hunk()<CR>",
        desc = "Previous Hunk",
    },

    {
        "<leader>gl",
        "<cmd>lua require('gitsigns').blame_line()<CR>",
        desc = "Blame Line",
    },

    {
        "<leader>go",
        "<cmd>Telescope git_status<CR>",
        desc = "Git Status",
    },

    {
        "<leader>gp",
        "<cmd>lua require('gitsigns').preview_hunk()<CR>",
        desc = "Preview Hunk",
    },

    {
        "<leader>gr",
        "<cmd>lua require('gitsigns').reset_hunk()<CR>",
        desc = "Reset Hunk",
    },

    {
        "<leader>gR",
        "<cmd>lua require('gitsigns').reset_buffer()<CR>",
        desc = "Reset Buffer",
    },

    {
        "<leader>gs",
        "<cmd>lua require('gitsigns').stage_hunk()<CR>",
        desc = "Stage Hunk",
    },

    {
        "<leader>gu",
        "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>",
        desc = "Undo Stage Hunk",
    },

    ----------------------------------------------------------------------------
    -- LSP
    ----------------------------------------------------------------------------

    {
        "<leader>l",
        group = "LSP",
    },

    {
        "<leader>la",
        "<cmd>lua vim.lsp.buf.code_action()<CR>",
        desc = "Code Action",
    },

    {
        "<leader>li",
        "<cmd>LspInfo<CR>",
        desc = "LSP Info",
    },

    {
        "<leader>ll",
        "<cmd>lua vim.lsp.codelens.run()<CR>",
        desc = "CodeLens",
    },

    {
        "<leader>lr",
        "<cmd>lua vim.lsp.buf.rename()<CR>",
        desc = "Rename",
    },

    {
        "<leader>ls",
        "<cmd>Telescope lsp_document_symbols<CR>",
        desc = "Document Symbols",
    },

    {
        "<leader>lS",
        "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>",
        desc = "Workspace Symbols",
    },

    ----------------------------------------------------------------------------
    -- Terminal
    ----------------------------------------------------------------------------

    {
        "<leader>t",
        group = "Terminal",
    },

    {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float<CR>",
        desc = "Float Terminal",
    },

    {
        "<leader>th",
        "<cmd>ToggleTerm size=10 direction=horizontal<CR>",
        desc = "Horizontal Terminal",
    },

    {
        "<leader>tv",
        "<cmd>ToggleTerm size=80 direction=vertical<CR>",
        desc = "Vertical Terminal",
    },

    {
        "<leader>tn",
        "<cmd>lua _NODE_TOGGLE()<CR>",
        desc = "Node",
    },

    {
        "<leader>tp",
        "<cmd>lua _PYTHON_TOGGLE()<CR>",
        desc = "Python",
    },

    {
        "<leader>tt",
        "<cmd>lua _HTOP_TOGGLE()<CR>",
        desc = "htop",
    },
})
