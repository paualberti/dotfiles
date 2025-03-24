return {
	-- Text editing
	{ "echasnovski/mini.ai", event = "VeryLazy", opts = {} },
	{
		"echasnovski/mini.align",
		event = "VeryLazy",
		opts = { mappings = { start_with_preview = "" } },
	},
	{ "echasnovski/mini.comment", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.pairs", event = "InsertEnter", opts = { mappings = { ["`"] = false } } },
	{ "echasnovski/mini.splitjoin", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.surround", event = "VeryLazy", opts = {} },

	-- General workflow
	{ "echasnovski/mini.bracketed", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.bufremove", opts = {} },
	{ "echasnovski/mini.diff", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.extra", opts = {} },
	{
		"echasnovski/mini.sessions",
		opts = {},
		keys = {
			{ "<C-s>", "<Cmd>lua MiniSessions.write(0)<CR>", desc = "Save Session" },
			{ "<C-l>", "<Cmd>lua MiniSessions.read()<CR>", desc = "Load Session" },
		},
	},
	{ "echasnovski/mini.visits", opts = {} },

	-- Appearance
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = {
			scroll = { enable = false },
			resize = { enable = false },
		},
	},
	-- { "echasnovski/mini.base16", opts = {} },
	{ "echasnovski/mini.cursorword", opts = {} },
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
	{ "echasnovski/mini.notify", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.statusline", opts = {} },
	{ "echasnovski/mini.tabline", opts = {} },

	-- Other
	{ "echasnovski/mini.doc", opts = {} },
	{ "echasnovski/mini.test", opts = {} },
}
