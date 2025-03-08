return {
	{
		"deparr/tairiki.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			palette = "dimmed",
			default_dark = "dimmed",
			default_light = "dimmed",
			transparent = false,
			code_style = {
				comments = "none",
			},
		},
		keys = { { "<leader>utt", "<Cmd>colorscheme tairiki<CR>", desc = "Tairiki" } },
	},
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			options = {
				transparent = false,
			},
		},
		init = function()
			vim.cmd([[colorscheme nordfox]])
		end,
		keys = {
			{ "<leader>utN", "<Cmd>colorscheme nightfox<CR>", desc = "Nightfox" },
			{ "<leader>utn", "<Cmd>colorscheme nordfox<CR>", desc = "Nordfox" },
		},
	},
	{
		"catppuccin/nvim",
		lazy = false,
		priority = 1000,
		name = "catppuccin",
		opts = {
			background = {
				light = "macchiato",
				dark = "macchiato",
			},
			transparent_background = false,
			styles = {
				comments = {},
				conditionals = {},
			},
		},
		keys = { { "<leader>utc", "<Cmd>colorscheme catppuccin<CR>", desc = "Catppuccin" } },
	},
}
