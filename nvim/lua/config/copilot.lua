-- Disable copilot for large files
vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    local file = vim.fn.expand("<afile>")
    local size = vim.fn.getfsize(file)
    if size > 100000 or size == -2 then
      vim.b.copilot_enabled = false
    end
  end,
})

-- Enable copilot for specific filetypes
vim.g.copilot_filetypes = {
  ["*"] = false,
  ["javascript"] = true,
  ["typescript"] = true,
  ["lua"] = true,
  ["rust"] = true,
  ["go"] = true,
  ["python"] = true,
  ["ruby"] = true,
  ["bash"] = true,
  ["css"] = true,
  ["eruby"] = true,
  ["erb"] = true,
  ["dockerfile"] = true,
  ["html"] = true,
  ["yaml"] = true,
  ["markdown"] = true,
} 