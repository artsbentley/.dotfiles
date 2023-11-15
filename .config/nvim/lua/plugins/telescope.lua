return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "debugloop/telescope-undo.nvim",
        "danielfalk/smart-open.nvim",
    },
    config = function()
        require("telescope").setup({
            extensions = {
                undo = {
                    -- telescope-undo.nvim config, see below
                },
            },
        })
        require("telescope").load_extension("undo")
        require("telescope").load_extension("smart_open")
    end,
    keys = {

        { "<leader>uU", "<cmd>Telescope undo<cr>" },
        {
            "<leader><leader>",
            function()
                require("telescope").extensions.smart_open.smart_open()
            end,
        },
    },
}
