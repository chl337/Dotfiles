local undotree = require("undotree")

undotree.setup({
    float_diff = true,

    layout = "left_bottom",

    ignore_filetype = {
        "Undotree",
        "UndotreeDiff",
        "qf",
        "TelescopePrompt",
        "spectre_panel",
        "tsplayground",
    },

    window = {
        winblend = 30,
    },

    keymaps = {
        move_next = "j",
        move_prev = "k",

        move_change_next = "J",
        move_change_prev = "K",

        action_enter = "<CR>",
        enter_diffbuf = "p",

        quit = "q",
    },
})
