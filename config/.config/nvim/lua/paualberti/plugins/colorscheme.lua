return {
	-- tairiki
	{
		"deparr/tairiki.nvim",
		priority = 1000,
		opts = {
			palette = "dimmed",
			default_dark = "dimmed",
			default_light = "dimmed",
			transparent = false,
			code_style = {
				comments = { italic = false },
			},
		},
		keys = { { "<leader>utt", "<Cmd>colorscheme tairiki<CR>", desc = "Tairiki" } },
	},
	-- nightfox
	{
		"EdenEast/nightfox.nvim",
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
	-- catppuccin
	{
		"catppuccin/nvim",
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
	-- gruvbox
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		opts = {
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
			transparent_mode = false,
		},
		keys = { { "<leader>utg", "<Cmd>colorscheme gruvbox<CR>", desc = "Gruvbox" } },
	},
}
