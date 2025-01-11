local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Color scheme
  'romainl/flattened',

  -- Navigation
  'christoomey/vim-tmux-navigator',

  -- Status line
  'nvim-lualine/lualine.nvim',
  'edkolev/tmuxline.vim',

  -- Git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Language support
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',

  -- File navigation
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Languages
  'fatih/vim-go',
  'vim-ruby/vim-ruby',
  'elixir-editors/vim-elixir',
  'prisma/vim-prisma',

  -- AI assistance
  'github/copilot.vim',

  -- Testing
  'vim-test/vim-test',

  -- Tree-sitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },

  -- Other utilities
  'mbbill/undotree',
  'lukas-reineke/indent-blankline.nvim',
})
