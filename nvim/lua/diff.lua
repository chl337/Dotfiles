local diff = require('diffview')
diff.setup({
    enhanced_diff_hl = true,  -- Better highlighting
        view = {
            merge_tool = {
            layout = "diff3_mixed",  -- Layout for merge conflicts
            },
        },
})
