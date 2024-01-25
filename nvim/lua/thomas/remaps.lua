-- shorten keymap function
local function keymap(mode, key, command, opts)
  opts = opts or {}
  vim.keymap.set(mode, key, command, opts)
end

-- documentation:
-- https://vimhelp.org/vim_faq.txt.html#faq-20.5



-- SYSTEM

keymap('n', '<leader>w', '<C-w>') -- maintain window navigation
keymap('n', '<C-w>', ':w<cr>') -- saving
keymap('n', '<C-s>', ':so<cr>') -- source
keymap('n', '<C-q>', ':q<cr>') -- quitting
keymap('n', '<leader>c', vim.cmd.nohlsearch) -- clear search highlighting

-- NAVIGATION

keymap('n', '<leader>e', vim.cmd.Ex) -- file explorer
keymap('n', '<leader>u', ':UndotreeToggle<CR>') -- toggle undotree

-- MOTIONS

keymap('v', 'J', ":m '>+1<CR>gv=gv") -- visual mode text shifting
keymap('v', 'K', ":m '<-2<CR>gv=gv") -- using J / K (down, up)

keymap('n', 'o', 'o<Esc>') -- preference for o / O (escapes after motioning)
keymap('n', 'O', 'O<Esc>')

keymap('n', '<C-d>', '<C-d>zz') -- cursor remains centered in <C-d> / <C-u>
keymap('n', '<C-u>', '<C-u>zz')

keymap('n', '<C-j>', '<C-y>') -- scroll screen without cursor
keymap('n', '<C-k>', '<C-e>')

-- QOL

keymap('n', '=', 'V=') -- easier indenting
keymap('n', 'Y', 'Vy') -- easier line yanking

keymap('n', '<C-n>', 'i<Enter><Esc>k$') -- <C-n> to break line at cursor

keymap('n', '<C-a>', 'A;<C-c>') -- appending ; to current line in normal / insert mode
keymap('i', '<C-a>', '<C-c>A;<C-c>')

