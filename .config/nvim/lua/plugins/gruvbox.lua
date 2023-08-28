-- return {}
return {
    -- add gruvbox
    { "sainnhe/gruvbox-material" },
    -- { "eddyekofo94/gruvbox-flat.nvim" },
    priority = 1000,
    -- config = function()
    -- require("gruvbox").setup({
    --     palette_overrides = {
    --         bright_green = "#52a260",
    --     },
    -- })
    -- end,

    {
        "LazyVim/LazyVim",
        opts = {
            vim.cmd([[let g:gruvbox_material_enable_bold=1]]),
        },
    },
}
