return {
	"nvzone/showkeys",
	event = "VeryLazy",
	opts = {
		position = "top-right",
		maxkeys = 4,
	},
	config = function(_, opts)
		local showkeys = require("showkeys")
		showkeys.setup(opts)
		showkeys.open()
	end,
	keys = { { "<leader>uS", "<Cmd>ShowkeysToggle<CR>", desc = "ShowkeysToggle" } },
}
