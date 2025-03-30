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
				add = "gsa", -- Add surrounding in Normal and Visual modes
				delete = "gsd", -- Delete surrounding
				find = "gsf", -- Find surrounding (to the right)
				find_left = "gsF", -- Find surrounding (to the left)
				highlight = "gsh", -- Highlight surrounding
				replace = "gsr", -- Replace surrounding
				update_n_lines = "gsn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},
		},
		keys = { "gs" },
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
