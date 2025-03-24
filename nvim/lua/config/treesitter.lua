require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "lua",
    "vim",
    "javascript",
    "typescript",
    "ruby",
    "go",
    "elixir",
    "html",
    "css",
    "json",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}) 