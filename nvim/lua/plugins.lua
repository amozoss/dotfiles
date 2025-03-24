local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- LSP and Completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind.nvim'
  
  -- Your existing plugins (excluding coc.nvim)
  use 'christoomey/vim-tmux-navigator'
  use 'edkolev/tmuxline.vim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'fatih/vim-go'
  use 'vim-ruby/vim-ruby'
  use 'janko/vim-test'
  use 'airblade/vim-gitgutter'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'neoclide/vim-jsx-improve'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'
  use 'styled-components/vim-styled-components'
  use 'github/copilot.vim'
  use 'kchmck/vim-coffee-script'
  use({
    "jackMort/ChatGPT.nvim",
    branch = 'main',
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "cat ~/.config/openai.token",
        model = "gpt-4",
        keymaps = {
          close = { "<C-c>" },
          submit = "<C-Enter>",
          yank_last = "<C-y>",
          yank_last_code = "<C-k>",
          scroll_up = "<C-u>",
          scroll_down = "<C-d>",
          toggle_settings = "<C-o>",
          new_session = "<C-n>",
          cycle_windows = "<Tab>",
        },
      })
    end
  })
  
  -- Telescope and dependencies
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { 
      {'nvim-lua/plenary.nvim'}
    },
    config = function()
      require('config.telescope')
    end
  }
  
  use 'mbbill/undotree'
  use 'hashivim/vim-terraform'
  use 'elixir-editors/vim-elixir'
  use 'preservim/vim-indent-guides'
  use 'prisma/vim-prisma'
  
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end) 