-- Enable true color support
vim.opt.termguicolors = true

-- Set colorscheme to Solarized
vim.opt.background = 'dark'  -- or 'light' if you prefer
vim.cmd([[
  syntax enable
  set background=dark
  source ~/dotfiles/plugins/solarized.lua
]])

-- Ensure colors work properly in tmux
vim.cmd([[
  if exists('$TMUX')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  endif
]])

-- Optional: customize specific highlights
vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi LineNr guibg=NONE ctermbg=NONE
  hi SignColumn guibg=NONE ctermbg=NONE
  hi VertSplit guibg=NONE ctermbg=NONE
]]) 