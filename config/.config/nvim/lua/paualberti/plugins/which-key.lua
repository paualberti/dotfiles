return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		delay = 500,
		icons = {
			mappinqs = vim.g.have_nerd_font,
		},
		spec = {
			{ mode = { "n", "x" }, "<leader>b", group = "Buffer" },
			{ mode = { "n", "x" }, "<leader>c", group = "Code" },
			{ mode = { "n", "x" }, "<leader>f", group = "Find" },
			{ mode = { "n", "x" }, "<leader>g", group = "Git" },
			{ mode = { "n", "x" }, "<leader>h", group = "Harpoon" },
			{ mode = { "n", "x" }, "<leader>m", group = "Markdown" },
			{ mode = { "n", "x" }, "<leader>mp", group = "Preview" },
			{ mode = { "n", "x" }, "<leader>r", group = "Rename" },
			{ mode = { "n", "x" }, "<leader>s", group = "Search" },
			{ mode = { "n", "x" }, "<leader>t", group = "Terminal" },
			{ mode = { "n", "x" }, "<leader>u", group = "UI options" },
			{ mode = { "n", "x" }, "<leader>ut", group = "Theme Switch" },
		},
	},
}
