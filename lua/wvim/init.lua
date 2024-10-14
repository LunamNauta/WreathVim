require("wvim.config.wvim")

local settings = require("wvim.config.settings")
settings.load_defaults()

local keymaps = require("wvim.config.keymaps")
keymaps.load_defaults()

local bootstrap = require("wvim.bootstrap")
vim.cmd.colorscheme(Wvim.colorscheme)
