-- Window management settings
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Window navigation with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })

-- Quick window resizing
vim.keymap.set('n', '<leader>>', ':vertical resize +40<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><', ':vertical resize -40<CR>', { noremap = true, silent = true }) 