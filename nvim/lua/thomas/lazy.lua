-- installing lazy.nvim (package manager)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- this is where we install each plugin;
-- open a new block using {} and add the name of the plugin in single quotation marked_string
-- any options or dependencies should be found in the plugin's documentation
require("lazy").setup({

  -- aesthetics (matches terminal)
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },

  --'nvim-tree/nvim-web-devicons',

  -- set lualine as statusline
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  -- lsp config / plugins
  {
    'neovim/nvim-lspconfig',
    dependencies = {

      -- auto install lsps to stdpath
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- lsp status updates
      { 'j-hui/fidget.nvim', opts = {} },

      -- lua configuration, enhances nvim 
      'folke/neodev.nvim',

    },
  },

  -- autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',

      'rafamadriz/friendly-snippets',
    },
  },
  'windwp/nvim-autopairs',

  -- telescope (fuzzy finder)
  {
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
    },
  },

  -- treesitter
  {
    -- code navigation
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

  -- undotree
  'mbbill/undotree',

  -- latex compilation support (?)
  'lervag/vimtex'
})
