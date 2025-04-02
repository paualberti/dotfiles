-- Global options
vim.g.netrw_bufsettings = "noma nomod nu rnu nobl nowrap ro"
vim.g.have_nerd_font = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })

require("paualberti.config.autocmd")
require("paualberti.config.options")
require("paualberti.config.keymaps")
