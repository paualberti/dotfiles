return {
	"paualberti/toggleterm.nvim",
	tag = "v0.1.0",
	cmd = {
		"ToggleTerm",
		"TermClose",
		"TermExec",
		"TermSelect",
		"TermSendVisualCurrentLine",
		"TermSendVisualLines",
		"TermSendVisualSelection",
	},
	opts = {},
	keys = {
		{ "<C-t>", "<Cmd>ToggleTerm<CR>", desc = "Open" },
		{ "<leader>tc", "<Cmd>TermClose<CR>", desc = "close" },
	},
}
