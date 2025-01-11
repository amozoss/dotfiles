local opt = vim.opt

-- General settings
opt.compatible = false
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.undodir = vim.fn.expand('~/.vim/undo')
opt.undolevels = 1000
opt.undoreload = 10000

-- UI settings
opt.number = true
opt.numberwidth = 4
opt.ruler = true
opt.syntax = 'enable'
opt.background = 'dark'
opt.termguicolors = true

-- Indentation
opt.autoindent = true
opt.smartindent = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Status line
opt.laststatus = 2

-- Other settings
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.backspace = 'indent,eol,start'
opt.clipboard = 'unnamed' 