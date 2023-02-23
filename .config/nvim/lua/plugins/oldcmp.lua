return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
        { "zbirenbaum/copilot-cmp" },
    },
    opts = function(_, opts)
        local cmp = require("cmp")
        opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" } }))

        cmp.setup({
            enabled = true,
            preselect = cmp.PreselectMode.None,
            sources = {
                { name = "nvim_lsp" },
            },
        })
    end,
}