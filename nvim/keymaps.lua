
local keymap = vim.keymap.set

-- General mappings
keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>l', '<cmd>Telescope buffers<cr>')
keymap('n', '<leader>r', '<cmd>Telescope live_grep<cr>')

-- Window management
keymap('n', '<leader>\\', '<cmd>vsplit<cr>')
keymap('n', '<leader>/', '<cmd>split<cr>')
keymap('n', '<leader>>', '<cmd>vertical resize +40<cr>')
keymap('n', '<leader><', '<cmd>vertical resize -40<cr>')

-- Git mappings
keymap('n', '<leader>gb', '<cmd>Git blame<cr>')

-- Test mappings
keymap('n', '<leader>;', '<cmd>TestNearest<cr>')

-- Copilot mappings
keymap('i', '<leader>aj', '<Plug>(copilot-next)')
keymap('i', '<leader>ak', '<Plug>(copilot-previous)')
keymap('i', '<leader>ad', '<Plug>(copilot-dismiss)')

-- LSP mappings
keymap('n', 'gd', vim.lsp.buf.definition)
keymap('n', 'gr', vim.lsp.buf.references)
keymap('n', 'gi', vim.lsp.buf.implementation)
keymap('n', 'K', vim.lsp.buf.hover)
keymap('n', '<leader>rn', vim.lsp.buf.rename)
