return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "git", -- also try out "git_branch"
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	init = function()
		local grapple = require("grapple")
		grapple.statusline()
	end,
	keys = {
		{ "<C-s>", "<cmd>Grapple toggle<cr>", desc = "Grapple save tag" },
		{ "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
		{ "<C-n>", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
		{ "<C-p>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
	},
}
