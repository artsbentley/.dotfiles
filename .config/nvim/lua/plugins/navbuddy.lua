return {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>nv", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
    },
    config = function()
        local navbuddy = require("nvim-navbuddy")
        local actions = require("nvim-navbuddy.actions")

        navbuddy.setup({
            window = {
                border = "single",
                size = "60%",
                position = "50%",
                sections = {
                    left = {
                        size = "20%",
                        border = nil,
                    },
                    mid = {
                        size = "40%",
                        border = nil,
                    },
                    right = {
                        border = nil,
                    },
                },
            },
            icons = {
                File = " ",
                Module = " ",
                Namespace = " ",
                Package = " ",
                Class = " ",
                Method = " ",
                Property = " ",
                Field = " ",
                Constructor = " ",
                Enum = "練",
                Interface = "練",
                Function = " ",
                Variable = " ",
                Constant = " ",
                String = " ",
                Number = " ",
                Boolean = "◩ ",
                Array = " ",
                Object = " ",
                Key = " ",
                Null = "ﳠ ",
                EnumMember = " ",
                Struct = " ",
                Event = " ",
                Operator = " ",
                TypeParameter = " ",
            },
            mappings = {
                ["<esc>"] = actions.close,
                ["q"] = actions.close,

                ["j"] = actions.next_sibling,
                ["k"] = actions.previous_sibling,

                ["h"] = actions.parent,
                ["l"] = actions.children,

                ["v"] = actions.visual_name,
                ["V"] = actions.visual_scope,

                ["y"] = actions.yank_name,
                ["Y"] = actions.yank_scope,

                ["i"] = actions.insert_name,
                ["I"] = actions.insert_scope,

                ["a"] = actions.append_name,
                ["A"] = actions.append_scope,

                ["r"] = actions.rename,

                ["d"] = actions.delete,

                ["f"] = actions.fold_create,
                ["F"] = actions.fold_delete,

                ["c"] = actions.comment,

                ["<enter>"] = actions.select,
                ["o"] = actions.select,

                ["J"] = actions.move_down,
                ["K"] = actions.move_up,
            },
            lsp = {
                auto_attach = true,
                preference = nil,
            },
            source_buffer = {
                follow_node = true,
                highlight = true,
                reorient = "smart",
            },
        })
    end,
}

-- return {
--     "SmiteshP/nvim-navbuddy",
--     dependencies = {
--         "neovim/nvim-lspconfig",
--         "SmiteshP/nvim-navic",
--         "MunifTanjim/nui.nvim",
--     },
--     keys = {
--         { "<leader>nv", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
--     },
--     config = function()
--         local actions = require("nvim-navbuddy.actions")
--         local navbuddy = require("nvim-navbuddy")
--         navbuddy.setup({
--             window = {
--                 border = "double",
--             },
--             mappings = {
--                 ["k"] = actions.next_sibling,
--                 ["i"] = actions.previous_sibling,
--                 ["j"] = actions.parent,
--                 ["l"] = actions.children,
--             },
--             lsp = { auto_attach = true },
--         })
--     end,
-- }
