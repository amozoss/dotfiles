-- Indent guides configuration
vim.g.indent_guides_enable_on_vim_startup = 0
vim.g.indent_guides_auto_colors = 0
vim.g.indent_guides_guide_size = 1

-- Set custom colors for indent guides
vim.api.nvim_create_autocmd("VimEnter,Colorscheme", {
  callback = function()
    vim.cmd([[
      hi IndentGuidesOdd  ctermbg=green
      hi IndentGuidesEven ctermbg=black
    ]])
  end,
})

-- Toggle indent guides with leader key
vim.keymap.set('n', '<leader>i', ':IndentGuidesToggle<CR>', { noremap = true, silent = true }) 