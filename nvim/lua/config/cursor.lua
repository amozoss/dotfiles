-- Cursor settings
vim.opt.cursorline = true
vim.opt.guicursor = {
  'n-v-c:block',
  'i-ci-ve:ver25',
  'r-cr:hor20',
  'o:hor50',
  'a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor',
  'sm:block-blinkwait175-blinkoff150-blinkon175'
}

-- Set cursor shapes for different modes
vim.cmd([[
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
]]) 