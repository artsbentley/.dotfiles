-- TODO
--remap 0 to move up and down highlighted text (might be a default feature)	
--
--


-- recenter screen to current line after moving half a page down or up
map("n", "<C-d>", "<C-d>:normal z.")
map("n", "<C-u>", "<C-u>:normal z.")

-- Map leader to <Space>
map("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- Unmap Ctrl + q
map("n", "<C-q>", "", defaults)

-- Telescope
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})

-- map for quick quit, save files using leader key
---- Normal mode
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>a', ':wqa<CR>')
map('n', '<Leader>x', ':wq<CR>')

---- Insert mode
map('i', ';w', '<esc>:write<CR>')
map('i', ';x', '<esc>:wq<CR>')


-- map for quick open the file init.lua
-- map('n', '<leader>nv', ':vsplit ~/.config/nvim/init.lua<cr>', {})


-- use U for redo
map('n', 'U', '<C-r>', {})


-- Insert empty line without entering insert mode
map('n', '<leader>o', ':<C-u>call append(line("."), repeat([""], v:count1))<CR>', defaults)
map('n', '<leader>O', ':<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>', defaults)

-- Alt/Meta + c to capitalize the inner word
map('n', '<M-c>', 'guiw~w', defaults)

-- Alt/Meta + u to capitalize the inner word
map('n', '<M-u>', 'gUiww', defaults)

-- Alt/Meta + l to capitalize the inner word
map('n', '<M-l>', 'guiww', defaults)

-- Using H/L to go to the begining and the end of line
-- Note: H will map to _ (the first non-whitespace character of a line)
-- It would be helpful if it is a indent line in some languages like Python, Ruby, YAML, ...
-- replace this with leader instead op capitalized?
map('n', 'H', '_', defaults)
map('n', 'L', '$', defaults)
