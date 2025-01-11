-- Snippet configuration
vim.g.coc_snippet_next = '<c-j>'
vim.g.coc_snippet_prev = '<c-k>'

-- Snippet keymaps
vim.keymap.set('i', '<C-l>', '<Plug>(coc-snippets-expand)', {})
vim.keymap.set('v', '<C-j>', '<Plug>(coc-snippets-select)', {})
vim.keymap.set('i', '<C-j>', '<Plug>(coc-snippets-expand-jump)', {})
vim.keymap.set('x', '<leader>x', '<Plug>(coc-convert-snippet)', {}) 