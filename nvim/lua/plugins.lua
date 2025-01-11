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
  use 'romainl/flattened'
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
  use {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    requires = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('CopilotChat').setup({
        debug = false,
        model = 'gpt-4',
        temperature = 0.2,
      })
    end
  }
  use 'github/copilot.vim'
  use 'kchmck/vim-coffee-script'
  
  use {
    'junegunn/fzf.vim',
    requires = { 'junegunn/fzf', run = ':call fzf#install()' }
  }
  
  use 'mbbill/undotree'
  use 'hashivim/vim-terraform'
  use 'elixir-editors/vim-elixir'
  use 'preservim/vim-indent-guides'
  use 'prisma/vim-prisma'

  if packer_bootstrap then
    require('packer').sync()
  end
end) 