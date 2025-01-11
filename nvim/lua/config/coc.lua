-- CoC extensions
vim.g.coc_global_extensions = {
  'coc-prettier',
  'coc-elixir',
  'coc-emmet',
  'coc-tsserver',
  'coc-go',
  'coc-html',
  'coc-css',
  'coc-json',
  '@yaegassy/coc-tailwindcss3',
  'coc-solargraph',
  'coc-react-refactor',
  'coc-snippets',
  '@yaegassy/coc-volar'
}

-- Add CoC ESLint if ESLint is installed
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.fn.isdirectory('./node_modules') == 1 and vim.fn.isdirectory('./node_modules/eslint') == 1 then
      -- Uncomment the following line if you want ESLint
      -- table.insert(vim.g.coc_global_extensions, 'coc-eslint')
    end
  end,
})

-- Show documentation in preview window
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    if not vim.fn.pumvisible() then
      vim.fn.CocActionAsync('doHover')
    end
  end,
}) 