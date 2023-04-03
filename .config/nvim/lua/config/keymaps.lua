-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp lines
-- function to toggle "normal" diagnostics or lsp-lines diagnostics.
local function toggle_diagnostics()
    local diagnostics_on = require("lsp_lines").toggle()
    if diagnostics_on then
        vim.diagnostic.config({ virtual_text = false })
    else
        vim.diagnostic.config({ virtual_text = { spacing = 4, prefix = "●" } })
    end
end

vim.keymap.set("n", "<Leader>ui", toggle_diagnostics, { desc = "Toggle [i]nline diagnostic type" })

-- TELESCOPE
-- live grep additonal arguments: https://github.com/nvim-telescope/telescope.nvim/issues/564
-- local actions = require("telescope.actions")
-- require("telescope").setup({
--     -- defaults = { },
--     pickers = {
--         live_grep = {
--             mappings = {
--                 i = { ["<C-a>"] = actions.to_fuzzy_refine },
--                 n = { ["<C-a>"] = actions.to_fuzzy_refine },
--             },
--         },
--     },
--     -- extensions = { },
-- })

-- source: https://www.reddit.com/r/neovim/comments/udx0fi/telescopebuiltinlive_grep_and_operator/
require("telescope").setup({
    pickers = {
        live_grep = {
            on_input_filter_cb = function(prompt)
                -- AND operator for live_grep like how fzf handles spaces with wildcards in rg
                return { prompt = prompt:gsub("%s", ".*") }
            end,
        },
    },
})

-- -- GPT
-- vim.keymap.set("n", "<leader>,>", "<cmd><ChatGPTEditWithInstructionsCR>")
-- vim.keymap.set("i", "<leader>,>", "<cmd><ChatGPTEditWithInstructionsCR>")

--
-- TELEKASTEN
-- -- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten new_templated_note<CR>")
vim.keymap.set("n", "<leader>zst", "<cmd>Telekasten show_tags<CR>")
vim.keymap.set("n", "<leader>zsc", "<cmd>Telekasten show_calendar<CR>")
vim.keymap.set("n", "<leader>zsb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
vim.keymap.set("n", "<leader>zv", "<cmd>Telekasten switch_vault<CR>")
-- vim.keymap.set("n", "<leader>zt", "<cmd>Telekasten toggle_todo<CR>") these dont work, see :h Zettelkasten for implementation withing function of configuration
-- vim.keymap.set("v", "<leader>zt", "<cmd>Telekasten toggle_todo<CR>")
vim.keymap.set("n", "<leader>#", "<cmd>Telekasten show_tags<CR>")
-- vim.keymap.set("n", "<leader>zy", "<cmd>Telekasten yank_notelink<CR>")

-- harpoon
vim.keymap.set("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Add to Harpoon" })
vim.keymap.set("n", "<leader>0", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = "Show Harpoon" })
vim.keymap.set("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Harpoon Buffer 1" })
vim.keymap.set("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Harpoon Buffer 2" })
vim.keymap.set("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Harpoon Buffer 3" })
vim.keymap.set("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Harpoon Buffer 4" })
vim.keymap.set("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", { desc = "Harpoon Buffer 5" })
vim.keymap.set("n", "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", { desc = "Harpoon Buffer 6" })
vim.keymap.set("n", "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", { desc = "Harpoon Buffer 7" })
vim.keymap.set("n", "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", { desc = "Harpoon Buffer 8" })
vim.keymap.set("n", "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", { desc = "Harpoon Buffer 9" })

-- buffer
vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Telescope" })

vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("v", "kj", "<Esc>")
vim.keymap.set("v", "jk", "<Esc>")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`hay")
vim.keymap.set("v", "Y", "myY`y")
