local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set leader key
vim.g.mapleader = ','

-- General mappings
map('n', '<leader>t', ':tabnew<CR>', opts)
map('n', '<leader>f', ':Files<CR>', opts)
map('n', '<leader>l', ':Buffers<CR>', opts)
map('n', '<leader>\\', ':vs<CR>', opts)
map('n', '<leader>/', ':split<CR>', opts)
map('n', '<leader>q', ':q!<CR>', opts)
map('n', '<leader>2', ':e ~/.config/nvim/init.lua<CR>', opts)
map('n', '<leader>1', ':source ~/.config/nvim/init.lua<CR>', opts)

-- Window resizing
map('n', '<leader>>', ':vertical resize +40<CR>', opts)
map('n', '<leader><', ':vertical resize -40<CR>', opts)

-- Git mappings
map('n', '<leader>gp', ':GitGutterPreviewHunk<CR>', opts)
map('n', '<leader>gu', ':GitGutterUndoHunk<CR>', opts)
map('n', '<leader>gb', ':Git blame<CR>', opts)

-- CoC mappings
map('n', 'gd', '<Plug>(coc-definition)', {})
map('n', 'gy', '<Plug>(coc-type-definition)', {})
map('n', 'gi', '<Plug>(coc-implementation)', {})
map('n', 'gr', '<Plug>(coc-references)', {})
map('n', '<leader>dr', '<Plug>(coc-rename)', {})
map('n', '<leader>ae', '<Plug>(coc-codeaction)', {})
map('n', '<leader>qf', '<Plug>(coc-fix-current)', {})

-- Copilot mappings
map('i', '<leader>aj', '<Plug>(copilot-next)', {})
map('i', '<leader>ak', '<Plug>(copilot-previous)', {})
map('i', '<leader>ad', '<Plug>(copilot-dismiss)', {})

-- Tab navigation
for i = 0, 8 do
  map('n', 'g' .. i, i .. 'gt', opts)
end 