-- Wildmenu settings
vim.opt.wildmenu = true
vim.opt.wildmode = {'list', 'longest'}

-- Ignore certain files and directories
vim.opt.wildignore = {
  '*/node_modules/*',
  '*/tmp/*',
  '*.so',
  '*.swp',
  '*.zip',
  '*.git/*',
  '*/_build/*',
  '*/deps/*',
  '*.beam',
  '*.pyc'
} 