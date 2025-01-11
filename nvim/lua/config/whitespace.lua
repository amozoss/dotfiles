-- List and whitespace settings
vim.opt.list = true
vim.opt.listchars = {
  trail = '·',
  tab = '»·'
}

-- Delete trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
}) 