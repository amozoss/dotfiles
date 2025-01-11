-- Search settings
vim.opt.grepprg = "rg --vimgrep"

-- Search for word under cursor
vim.keymap.set('n', '<Leader>r', ':Rg <C-R><C-W><CR>', { noremap = true, silent = true })

-- Clear search highlighting
vim.keymap.set('n', '<Leader><Esc>', ':nohlsearch<CR>', { noremap = true, silent = true }) 