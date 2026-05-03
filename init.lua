-- Set <space> as the leader key
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Enable NerdFonts
vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("lazy-install")
require("plugins")
