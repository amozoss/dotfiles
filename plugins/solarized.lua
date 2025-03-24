return {
  -- Plugin source
  'maxmx03/solarized.nvim',
  
  -- Load immediately (not lazy-loaded)
  lazy = false,
  
  -- High priority to ensure it loads before other plugins
  priority = 1000,
  
  -- Type annotation for better IDE support
  ---@type solarized.config
  opts = {
    theme = 'default', -- or 'neo'
    transparent = false, -- Enable transparent background
    styles = {
      comments = { italic = true },
      functions = { bold = true },
    },
  },
  
  config = function(_, opts)
    -- Enable true color support
    vim.o.termguicolors = true
    
    -- Set light background
    vim.o.background = 'light'
    
    -- Initialize the colorscheme with options
    require('solarized').setup(opts)
    
    -- Apply the colorscheme
    vim.cmd.colorscheme 'solarized'
  end,
} 