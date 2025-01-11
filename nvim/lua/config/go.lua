-- Go settings
vim.g.go_diagnostics_enabled = 0
vim.g.go_metalinter_enabled = {}
vim.g.go_jump_to_error = 0
vim.g.go_fmt_command = "goimports"
vim.g.go_auto_sameids = 0

-- Highlighting
vim.g.go_highlight_functions = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_build_constraints = 1

-- Go specific mappings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    local opts = { noremap = true, silent = true, buffer = true }
    vim.keymap.set('n', '<Leader>ds', '<Plug>(go-def-split)', opts)
    vim.keymap.set('n', '<Leader>dv', '<Plug>(go-def-vertical)', opts)
    vim.keymap.set('n', '<Leader>dt', '<Plug>(go-def-tab)', opts)
    vim.keymap.set('n', '<Leader>gv', '<Plug>(go-doc-vertical)', opts)
    vim.keymap.set('n', '<Leader>gi', '<Plug>(go-implements)', opts)
    vim.keymap.set('n', '<leader>b', '<Plug>(go-build)', opts)
    vim.keymap.set('n', '<leader>t', '<Plug>(go-test)', opts)
    vim.keymap.set('n', '<leader>gc', '<Plug>(go-coverage-toggle)', opts)
  end,
}) 