require("config.options")

require("config.lazy")

require("config.mappings")
require("config.autocmds")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
