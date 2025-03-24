-- FZF configuration
vim.env.FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow -g "!{.git,node_modules,.cache,public,deps,_build,.elixir_ls}/*" 2> /dev/null'

-- Custom mappings for FZF navigation
vim.cmd([[
  " Override the default FZF command to include custom keybindings
  command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--bind', 'ctrl-j:down,ctrl-k:up']}, <bang>0)
]])

-- Customize fzf colors to match your color scheme
vim.g.fzf_colors = {
  fg =      {'fg', 'Normal'},
  bg =      {'bg', 'Normal'},
  hl =      {'fg', 'Comment'},
  ['fg+'] = {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
  ['bg+'] = {'bg', 'CursorLine', 'CursorColumn'},
  ['hl+'] = {'fg', 'Statement'},
  info =    {'fg', 'PreProc'},
  border =  {'fg', 'Ignore'},
  prompt =  {'fg', 'Conditional'},
  pointer = {'fg', 'Exception'},
  marker =  {'fg', 'Keyword'},
  spinner = {'fg', 'Label'},
  header =  {'fg', 'Comment'}
} 