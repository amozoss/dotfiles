local autocmd = vim.api.nvim_create_autocmd

-- Delete empty space from the end of lines on every save
autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e"
})

-- Spellcheck for specific files
autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.md", "*.md.erb", "*.feature"},
  command = "setlocal spell"
})

-- File type detection
autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.ex", "*.exs"},
  command = "set filetype=elixir"
})

autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.eex", "*.heex", "*.leex", "*.sface", "*.lexs"},
  command = "set filetype=eelixir"
})

autocmd({"BufRead", "BufNewFile"}, {
  pattern = "mix.lock",
  command = "set filetype=elixir"
})

-- Templates
autocmd("BufNewFile", {
  pattern = "*.tsx",
  command = "0r ~/dotfiles/skeletons/typescript-react.tsx"
})

autocmd("BufNewFile", {
  pattern = "*content/blog*.md",
  command = "0r ~/dotfiles/skeletons/blog-post.md"
})

autocmd("BufNewFile", {
  pattern = "*.sh",
  command = "0r ~/dotfiles/skeletons/script.sh"
})

autocmd("BufNewFile", {
  pattern = "*.html",
  command = "0r ~/dotfiles/skeletons/page.html"
}) 