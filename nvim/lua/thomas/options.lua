-- highlight on search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.autoindent = true
-- enable mouse mode
--vim.opt.mouse = 'a'

-- sync OS / nvim clipboard
vim.opt.clipboard = 'unnamedplus'

-- break indent
vim.opt.breakindent = true

-- undo history
vim.opt.undofile = true

-- case-insensitive searching (overridden by \C or capitalised query)
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.spelllang = 'en_au' -- en_us, en_gb, en_au
vim.opt.spell = true
--vim.opt.hlSpellCap = false

vim.opt.scrolloff = 8
vim.opt.signcolumn = "number"

-- decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.completeopt = 'menuone,noselect'

--vim.opt.termguicolors = true
vim.opt.wrap = true
vim.opt.linebreak = true

--vim.cmd('cd ~')
--vim.opt.autochdir = true
