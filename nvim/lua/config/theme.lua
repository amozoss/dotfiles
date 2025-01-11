-- Theme settings
vim.cmd([[
  syntax enable
  set background=dark
  colorscheme flattened_dark
]])

-- Airline settings
vim.g.airline_theme = 'solarized'
vim.g.airline_solarized_bg = 'dark'
vim.g.airline_powerline_fonts = 1

-- IndentGuides settings
vim.g.indent_guides_enable_on_vim_startup = 0
vim.g.indent_guides_auto_colors = 0
vim.g.indent_guides_guide_size = 1

vim.api.nvim_create_autocmd({"VimEnter", "Colorscheme"}, {
  callback = function()
    vim.cmd([[
      hi IndentGuidesOdd  ctermbg=green
      hi IndentGuidesEven ctermbg=black
    ]])
  end,
}) 