-- Folding configuration
vim.opt.foldenable = false

-- Function to toggle folding
local function toggle_folding()
  if vim.opt.foldenable:get() then
    vim.opt.foldenable = false
    vim.opt.foldmethod = ''
  else
    vim.opt.foldenable = true
    vim.opt.foldmethod = 'indent'
    vim.opt.foldlevel = 99
  end
end

-- Folding keymaps
vim.keymap.set('n', '<leader>h', toggle_folding, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>n', function()
  local new_level = vim.opt.foldlevel:get() == 0 and 99 or 0
  vim.opt.foldlevel = new_level
end, { noremap = true, silent = true }) 