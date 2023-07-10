return {
    "akinsho/toggleterm.nvim",
    optt = {
        direction = "horizontal",
        persist_mode = true,
    },
    config = function()
        -- require("toggleterm").setup(vim.keymap.set("n", "<leader>ff", "<cmd>ToggleTerm size=40 persist_mode= true direction=horizontal<CR>"))
    end,
}
