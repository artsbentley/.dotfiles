-- return {
--     { "gleam-lang/gleam.vim" },
--     {
--         "neovim/nvim-lspconfig",
--         opts = {
--             servers = {
--                 gleam = {
--                     settings = {
--                         semantic_tokens = "full",
--                     },
--                 },
--             },
--         },
--     },
-- }
return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "gleam" })
            end
        end,
    },

    {
        "neovim/nvim-lspconfig",
        init = function()
            require("lspconfig").gleam.setup({})
        end,
    },
}
