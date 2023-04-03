return {
    "jackMort/ChatGPT.nvim",
    config = function()
        require("chatgpt").setup({
            -- optional configuration
            keymaps = {
                close = { "<C-c>" },
                submit = "<C-Enter>",
                yank_last = "<C-y>",
                yank_last_code = "<C-k>",
                scroll_up = "<C-u>",
                scroll_down = "<C-d>",
                toggle_settings = "<C-o>",
                new_session = "<C-f>",
                cycle_windows = "<Tab>",
                -- in the Sessions pane
                select_session = "<Space>",
                rename_session = "p",
                delete_session = "d",
            },
        })
    end,
    dependencies = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
    },
    keys = {
        { "<leader>gp", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
    },
}
