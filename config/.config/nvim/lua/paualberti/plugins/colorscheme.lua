return {
	-- tairiki
	{
		"deparr/tairiki.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			palette = "dimmed",
			default_dark = "dimmed",
			default_light = "dimmed",
			transparent = true,
			code_style = {
				comments = { italic = false },
			},
		},
		keys = { { "<leader>utt", "<Cmd>colorscheme tairiki<CR>", desc = "Tairiki" } },
		init = function()
			-- require("tairiki").load()
		end,
	},
	-- nightfox
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			options = {
				transparent = true,
			},
		},
		init = function()
			vim.cmd([[colorscheme nightfox]])
		end,
		keys = {
			{ "<leader>utn", "<Cmd>colorscheme nightfox<CR>", desc = "Nightfox" },
			{ "<leader>utN", "<Cmd>colorscheme nordfox<CR>", desc = "Nordfox" },
		},
	},
	-- catppuccin
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
			transparent_background = true,
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
		lazy = false,
		priority = 1000,
		opts = {
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
			transparent_mode = true,
		},
		keys = { { "<leader>utg", "<Cmd>colorscheme gruvbox<CR>", desc = "Gruvbox" } },
	},
}
