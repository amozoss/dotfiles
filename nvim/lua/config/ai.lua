-- CopilotChat configuration
local chat = require('CopilotChat')

-- Keymaps
local opts = { noremap = true, silent = true }

-- Quick chat
vim.keymap.set('n', '<leader>ai', ':CopilotChat<CR>', opts)
vim.keymap.set('x', '<leader>ai', ':CopilotChat<CR>', opts)

-- Explain code
vim.keymap.set('n', '<leader>e', ':CopilotChatExplain<CR>', opts)
vim.keymap.set('x', '<leader>e', ':CopilotChatExplain<CR>', opts)

-- Fix/improve code
vim.keymap.set('n', '<leader>s', ':CopilotChatFix<CR>', opts)
vim.keymap.set('x', '<leader>s', ':CopilotChatFix<CR>', opts)

-- Custom prompts
vim.keymap.set('n', '<leader>ct', ':CopilotChatTests<CR>', opts) -- Generate tests
vim.keymap.set('n', '<leader>cr', ':CopilotChatReview<CR>', opts) -- Review code
vim.keymap.set('n', '<leader>cd', ':CopilotChatDocs<CR>', opts) -- Generate documentation 