return {
	dir = "~/personal/toggleterm.nvim",
	version = "*",
	event = "VeryLazy",
	opts = {
		open_mapping = "<C-t>",
		direction = "float",
		float_opts = {
			padding = 2,
			max_width = math.floor(0.8 * vim.o.columns),
			max_height = math.floor(0.9 * vim.o.lines),
		},
	},
	keys = {},
}
