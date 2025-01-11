-- Buffer settings
vim.opt.hidden = true  -- Allow buffers to be hidden without saving
vim.opt.autoread = true  -- Auto-reload files changed outside vim

-- Better buffer navigation
vim.keymap.set('n', '[b', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', ']b', ':bnext<CR>', { noremap = true, silent = true })

-- Close buffer without closing window
vim.keymap.set('n', '<Leader>bd', ':bp<bar>sp<bar>bn<bar>bd<CR>', { noremap = true, silent = true })

-- Save with leader key
vim.keymap.set('n', '<Leader>w', ':w!<CR>', { noremap = true, silent = true }) 