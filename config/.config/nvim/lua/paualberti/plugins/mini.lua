return {
	-- Text editing
	{ "echasnovski/mini.ai", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.align", opts = { mappings = { start_with_preview = "" } }, keys = { "ga" } },
	{ "echasnovski/mini.comment", opts = {}, keys = { "gc", mode = { "n", "x" } } },
	{ "echasnovski/mini.pairs", event = "InsertEnter", opts = {} },
	{ "echasnovski/mini.splitjoin", opts = {}, keys = { "gS" } },
	{
		"echasnovski/mini.surround",
		opts = {
			mappings = {
				add = "Sa", -- Add surrounding in Normal and Visual modes
				delete = "Sd", -- Delete surrounding
				find = "Sf", -- Find surrounding (to the right)
				find_left = "SF", -- Find surrounding (to the left)
				highlight = "Sh", -- Highlight surrounding
				replace = "Sr", -- Replace surrounding
				update_n_lines = "Sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		},
		keys = { "S" },
	},

	-- General workflow
	{ "echasnovski/mini.diff", event = "VeryLazy", opts = {} },
	{
		"echasnovski/mini.sessions",
		opts = {},
		keys = {
			{ "<C-s>", "<Cmd>lua MiniSessions.write(0)<CR>", desc = "Save Session" },
			{ "<C-l>", "<Cmd>lua MiniSessions.read()<CR>", desc = "Load Session" },
		},
	},

	-- Appearance
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = {
			scroll = { enable = false },
			resize = { enable = false },
		},
	},
	{
		"echasnovski/mini.hipatterns",
		event = "VeryLazy",
		config = function()
			local hipatterns = require("mini.hipatterns")
			hipatterns.setup({
				highlighters = {
					-- Highlight standalone "FIXME", "HACK", "TODO", "NOTE"
					fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
					hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
					todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
					note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

					-- Highlight hex color strings (`#rrggbb`) using that color
					hex_color = hipatterns.gen_highlighter.hex_color(),
				},
			})
		end,
	},
	-- { "echasnovski/mini.statusline", opts = {} },
	-- { "echasnovski/mini.tabline", opts = {} },

	-- Other
	-- { "echasnovski/mini.doc", opts = {} },
	-- { "echasnovski/mini.test", opts = {} },
}
