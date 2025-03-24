-- Custom commands
vim.api.nvim_create_user_command('Prettier', function()
  vim.fn.CocAction('runCommand', 'prettier.formatFile')
end, {})

-- Zing command
vim.api.nvim_create_user_command('Zing', function()
  -- Only try to write if there's a filename
  if vim.fn.expand('%') ~= '' then
    vim.cmd('write')
  end
  vim.fn.system('zing')
end, {})

-- Custom keymaps for commands
vim.keymap.set('n', '<Leader>ll', ':Prettier<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>z', ':Zing<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<Leader>z', '<C-C>:Zing<CR>', { noremap = true, silent = true })

-- Set custom undofile directory
vim.opt.undodir = vim.fn.expand('~/.vim/neovim/undo')
vim.opt.undofile = true 
