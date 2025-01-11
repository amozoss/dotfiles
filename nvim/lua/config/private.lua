-- Private mode settings
if vim.env.VIM_PRIVATE then
  vim.opt.history = 0
  vim.opt.backup = false
  vim.opt.modeline = false
  vim.opt.shelltemp = false
  vim.opt.swapfile = false
  vim.opt.undofile = false
  vim.opt.writebackup = false
  vim.opt.secure = true
  vim.opt.viminfo = ""
  vim.g.copilot_filetypes = { ["*"] = false }
  vim.b.copilot_enabled = false
end 