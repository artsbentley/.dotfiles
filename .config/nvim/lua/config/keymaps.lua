-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lsp lines
-- function to toggle "normal" diagnostics or lsp-lines diagnostics.
local function toggle_diagnostics()
    local diagnostics_on = require("lsp_lines").toggle()
    if diagnostics_on then
        vim.diagnostic.config({
            virtual_text = false,
        })
    else
        vim.diagnostic.config({
            virtual_text = { spacing = 4, prefix = "●" },
        })
    end
end

vim.keymap.set("n", "<Leader>ui", toggle_diagnostics, { desc = "Toggle [i]nline diagnostic type" })

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
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("v", "kj", "<Esc>")
vim.keymap.set("v", "jk", "<Esc>")

-- redo
vim.keymap.set("n", "U", "<C-r>")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`hay")
vim.keymap.set("v", "Y", "myY`y")
