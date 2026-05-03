--  To check the current status of your plugins, run
--    :Lazy
--
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  require 'plugins/one-dark',
  require 'plugins/lualine',
  require 'plugins/guess-indent',
  require 'plugins/gitsigns',
  require 'plugins/which-key',
  require 'plugins/autopairs',
  require 'plugins/telescope',
  require 'plugins/mini',
  require 'plugins/indent',

  -- require 'plugins/todo-comments',

  -- modular approach: using `require 'path.name'` will
  -- include a plugin definition from file lua/path/name.lua
}, { ---@diagnostic disable-line: missing-fields
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

