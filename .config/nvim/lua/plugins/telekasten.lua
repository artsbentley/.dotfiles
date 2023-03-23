return {
    "renerocksai/telekasten.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        require("telekasten").setup({
            home = vim.fn.expand("~/wiki/home"), -- Put the name of your notes directory here
            -- template_new_note = "~/wiki/", -- template for new notes
            -- vaults = {
            --     KPN = {
            --         -- alternate configuration here. Missing values are defaulted to,
            --         -- default values from telekasten.
            --         -- auto_set_filetype = false,
            --         -- extension = ".md",
            --         -- template_handling = "smart",
            --         home = "kpn",
            --     },
            -- },
        })
    end,
}
