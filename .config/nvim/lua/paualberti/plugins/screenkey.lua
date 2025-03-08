return {
	"NStefan002/screenkey.nvim",
	version = "*", -- or branch = "dev", to use the latest commit
	cmd = { "Screenkey" },
	opts = {
		win_opts = {
			row = 0,
			col = vim.o.columns - 1,
			relative = "editor",
			anchor = "NE",
			width = 20,
			height = 1,
		},
		show_leader = false,
		group_mappings = true,
	},
	keys = { { "<leader>uS", "<Cmd>Screenkey toggle<CR>", desc = "Screenkey" } },
}
