local ok, configs = pcall(require, "nvim-treesitter.configs")

if not ok then
    vim.notify(
        "nvim-treesitter not found",
        vim.log.levels.ERROR
    )
    return
end

configs.setup({

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
