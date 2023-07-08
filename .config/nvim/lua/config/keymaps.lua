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

-- require("oil").setup({
--     vim.keymap.set("n", "<Leader>E", "<cmd>lua require('oil').open_float()<CR>", { desc = "Open file" }),
-- })

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

local toggleterm = require("toggleterm")
toggleterm.setup(vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm size=15 persist_mode= true direction=horizontal<CR>"))

-- TMUX NAVIGATOR
local nvim_tmux_nav = require("nvim-tmux-navigation")

nvim_tmux_nav.setup({
    disable_when_zoomed = true, -- defaults to false
})

vim.keymap.set("n", "<C-Left>", nvim_tmux_nav.NvimTmuxNavigateLeft)
vim.keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)

vim.keymap.set("n", "<C-Down>", nvim_tmux_nav.NvimTmuxNavigateDown)
vim.keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)

vim.keymap.set("n", "<C-Up>", nvim_tmux_nav.NvimTmuxNavigateUp)
vim.keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)

vim.keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
vim.keymap.set("n", "<C-Right>", nvim_tmux_nav.NvimTmuxNavigateRight)

vim.keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
vim.keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

-- harpoon
vim.keymap.set("n", "<leader>a", "<cmd>HarpoonAddFile<cr>", { desc = "Add to Harpoon" })
vim.keymap.set("n", "<leader>A", "<cmd>HarpoonShowMenu<cr>", { desc = "Show Harpoon" })
-- vim.keymap.set("n", "<f1>", function()
--     require("harpoon.ui").nav_file(1)
-- end, { desc = "Harpoon Buffer 1" })
-- vim.keymap.set("n", "<f2>", function()
--     require("harpoon.ui").nav_file(2)
-- end, { desc = "Harpoon Buffer 2" })
vim.keymap.set("n", "<f1>", "<cmd>HarpoonNav1<cr>", { desc = "Harpoon Buffer 1" })
vim.keymap.set("n", "<f2>", "<cmd>HarpoonNav2<cr>", { desc = "Harpoon Buffer 2" })
vim.keymap.set("n", "<f3>", "<cmd>HarpoonNav3<cr>", { desc = "Harpoon Buffer 3" })
vim.keymap.set("n", "<f4>", "<cmd>HarpoonNav4<cr>", { desc = "Harpoon Buffer 4" })

-- vim.keymap.set("n", "<leader>ff", "<cmd>Navbuddy<cr>", { desc = "Navbuddy" })

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

-- clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to clipboard" })
