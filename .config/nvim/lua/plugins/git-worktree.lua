return {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = {
        { "nvim-telescope/telescope.nvim" },
    },
    config = function()
        require("telescope").load_extension("git_worktree")
        vim.keymap.set("n", "<space>gw", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
        vim.keymap.set("n", "<space>ga", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
    end,
}
