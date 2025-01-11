
local opt = vim.opt

-- General settings
opt.compatible = false
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undodir = vim.fn.expand('~/.config/nvim/undo')
opt.undolevels = 1000
opt.undoreload = 10000

-- UI settings
opt.number = true
opt.relativenumber = false
opt.numberwidth = 4
opt.ruler = true
opt.showcmd = true
opt.showmode = true
opt.laststatus = 2
opt.signcolumn = 'yes'

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Indent settings
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true

-- Visual settings
opt.termguicolors = true
opt.background = 'dark'
opt.list = true
opt.listchars = {
  trail = '·',
  tab = '»·'
}

-- Performance settings
opt.updatetime = 300
opt.timeoutlen = 500
opt.lazyredraw = true

-- File handling
opt.fileencoding = 'utf-8'
