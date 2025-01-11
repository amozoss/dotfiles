-- Tabline function
local function tabline()
  local s = ''
  for i = 1, vim.fn.tabpagenr('$') do
    local tab = i
    local winnr = vim.fn.tabpagewinnr(tab)
    local buflist = vim.fn.tabpagebuflist(tab)
    local bufnr = buflist[winnr]
    local bufname = vim.fn.bufname(bufnr)
    local bufmodified = vim.fn.getbufvar(bufnr, "&mod")

    -- Select the highlighting
    if tab == vim.fn.tabpagenr() then
      s = s .. '%#TabLineSel#'
    else
      s = s .. '%#TabLine#'
    end

    -- Set the tab page number (for mouse clicks)
    s = s .. '%' .. tab .. 'T'

    -- The label is made by tabline#tabname()
    s = s .. ' ' .. tab .. ':'
    s = s .. (bufname ~= '' and '[' .. vim.fn.fnamemodify(bufname, ':t') .. '] ' or '[No Name] ')

    if bufmodified then
      s = s .. '[+] '
    end
  end

  -- After the last tab fill with TabLineFill and reset tab page nr
  s = s .. '%#TabLineFill#%T'

  return s
end

vim.opt.tabline = '%!v:lua.require\'config.tabline\'.tabline()'

return {
  tabline = tabline
} 