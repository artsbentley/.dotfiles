return {
    "SmiteshP/nvim-navbuddy",
    dependencies = { "neovim/nvim-lspconfig", "SmiteshP/nvim-navic", "MunifTanjim/nui.nvim" },
    config = function()
        local actions = require("nvim-navbuddy.actions")
        require("nvim-navbuddy").setup({
            lsp = {
                auto_attach = true, -- If set to true, you don't need to manually use attach function
                preference = nil, -- list of lsp server names in order of preference
            },
            source_buffer = {
                follow_node = true, -- Keep the current node in focus on the source buffer
                highlight = true, -- Highlight the currently focused node
            },
            keys = {
                -- { "<leader>ff", "<cmd>Navbuddy<cr>", desc = "Navbuddy" },
            },
            mappings = {
                ["<esc>"] = actions.close, -- Close and cursor to original location
                ["q"] = actions.close,

                ["j"] = actions.next_sibling, -- down
                ["k"] = actions.previous_sibling, -- up

                ["h"] = actions.parent, -- Move to left panel
                ["<left>"] = actions.parent, -- Move to left panel
                ["l"] = actions.children, -- Move to right panel
                ["<right>"] = actions.children, -- Move to right panel
                ["0"] = actions.root, -- Move to first panel

                ["v"] = actions.visual_name, -- Visual selection of name
                ["V"] = actions.visual_scope, -- Visual selection of scope

                ["y"] = actions.yank_name, -- Yank the name to system clipboard "+
                ["Y"] = actions.yank_scope, -- Yank the scope to system clipboard "+

                ["i"] = actions.insert_name, -- Insert at start of name
                ["I"] = actions.insert_scope, -- Insert at start of scope

                ["a"] = actions.append_name, -- Insert at end of name
                ["A"] = actions.append_scope, -- Insert at end of scope

                ["r"] = actions.rename, -- Rename currently focused symbol

                ["d"] = actions.delete, -- Delete scope

                ["f"] = actions.fold_create, -- Create fold of current scope
                ["F"] = actions.fold_delete, -- Delete fold of current scope

                ["c"] = actions.comment, -- Comment out current scope

                ["<enter>"] = actions.select, -- Goto selected symbol
                ["o"] = actions.select,

                ["J"] = actions.move_down, -- Move focused node down
                ["K"] = actions.move_up, -- Move focused node up
            },
            window = {
                border = "single",
                size = "60%",
                position = "180%",
                sections = {
                    left = {
                        size = "20%",
                        border = "double",
                    },
                    mid = {
                        size = "40%",
                        border = "double",
                    },
                    right = {
                        border = "double",
                    },
                },
            },
        })
    end,
}
--                     left = {
--                         size = "20%",
--                         border = nil,
--                     },
--                     mid = {
--                         size = "40%",
--                         border = nil,
--                     },
--                     right = {
--                         border = nil,
--                     },
--                 },
--             mappings = {
--                 ["<esc>"] = actions.close,
--                 ["q"] = actions.close,
--
--                 ["j"] = actions.next_sibling,
--                 ["k"] = actions.previous_sibling,
--
--                 ["h"] = actions.parent,
--                 ["l"] = actions.children,
--
--                 ["v"] = actions.visual_name,
--                 ["V"] = actions.visual_scope,
--
--                 ["y"] = actions.yank_name,
--                 ["Y"] = actions.yank_scope,
--
--                 ["i"] = actions.insert_name,
--                 ["I"] = actions.insert_scope,
--
--                 ["a"] = actions.append_name,
--                 ["A"] = actions.append_scope,
--
--                 ["r"] = actions.rename,
--
--                 ["d"] = actions.delete,
--
--                 ["f"] = actions.fold_create,
--                 ["F"] = actions.fold_delete,
--
--                 ["c"] = actions.comment,
--
--                 ["<enter>"] = actions.select,
--                 ["o"] = actions.select,
--
--                 ["J"] = actions.move_down,
--                 ["K"] = actions.move_up,
