-- Autocmds, keymaps, opts, terminal workflow
require("paualberti.config")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	defaults = {
		lazy = false,
		version = "*",
		cond = nil,
	},
	spec = { import = "paualberti.plugins" },
	rocks = { enabled = false },
	dev = {
		-- Directory where you store your local plugin projects. If a function is used,
		-- the plugin directory (e.g. `~/projects/plugin-name`) must be returned.
		---@type string | fun(plugin: LazyPlugin): string
		path = "~/projects",
		---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
		patterns = {}, -- For example {"folke"}
		fallback = false, -- Fallback to git when local plugin doesn't exist
	},
	checker = { enabled = true },
	change_detection = { notify = true },
})
