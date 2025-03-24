local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
    file_ignore_patterns = {
      "node_modules",
      ".git",
      ".cache",
      "deps",
      "_build",
      ".elixir_ls"
    }
  }
})

-- Keymaps
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts)
vim.keymap.set('n', '<leader>l', '<cmd>Telescope buffers<CR>', opts)
vim.keymap.set('n', '<leader>r', '<cmd>Telescope live_grep<CR>', opts) 