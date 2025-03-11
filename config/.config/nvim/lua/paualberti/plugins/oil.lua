return {
	"stevearc/oil.nvim",
	lazy = false,
	priority = 1000,
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	---@module 'oil'
	---@type oil.SetupOpts
	opts = { keymaps = { ["q"] = { "actions.close" } } },
	keys = { { "-", "<Cmd>Oil<CR>", desc = "Oil.nvim" } },
}
