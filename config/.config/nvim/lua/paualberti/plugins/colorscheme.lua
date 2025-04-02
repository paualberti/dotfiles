return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				bold = false,
				italic = false,
				transparency = true,
			},
		},
		init = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	-- nightfox
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		opts = {
			options = { transparent = false },
		},
		keys = {
			{ "<leader>utN", "<Cmd>colorscheme nightfox<CR>", desc = "Nightfox" },
			{ "<leader>utn", "<Cmd>colorscheme nordfox<CR>", desc = "Nordfox" },
		},
	},
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
}
