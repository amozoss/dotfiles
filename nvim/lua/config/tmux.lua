-- Tmux clipboard integration
vim.keymap.set('n', '<leader>c', function()
  vim.fn.system("tmux load-buffer -", vim.fn.getreg('0'))
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>p', function()
  vim.fn.setreg('0', vim.fn.system("tmux save-buffer -"))
  vim.cmd('normal! "0p')
  vim.cmd('normal! g;')
end, { noremap = true, silent = true })

-- Tmux navigation settings are handled by 'christoomey/vim-tmux-navigator' plugin 