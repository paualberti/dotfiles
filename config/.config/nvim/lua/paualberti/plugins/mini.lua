return {
	-- Text editing
	{ "echasnovski/mini.ai", event = "VeryLazy", opts = {} },
	{
		"echasnovski/mini.align",
		event = "VeryLazy",
		opts = { mappings = { start_with_preview = "" } },
	},
	{ "echasnovski/mini.comment", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.completion", opts = {} },
	{ "echasnovski/mini.move", opts = {} },
	{ "echasnovski/mini.operators", opts = {} },
	{ "echasnovski/mini.pairs", event = "InsertEnter", opts = { mappings = { ["`"] = false } } },
	{ "echasnovski/mini.snippets", opts = {} },
	{ "echasnovski/mini.splitjoin", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.surround", event = "VeryLazy", opts = {} },

	-- General workflow
	{ "echasnovski/mini.basics", opts = {} },
	{ "echasnovski/mini.bracketed", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.bufremove", opts = {} },
	{ "echasnovski/mini.clue", opts = {} },
	{ "echasnovski/mini.diff", opts = {} },
	{ "echasnovski/mini.extra", opts = {} },
	{ "echasnovski/mini.files", opts = {} },
	-- { "echasnovski/mini-git", opts = {} },
	{ "echasnovski/mini.jump", opts = {} },
	{ "echasnovski/mini.jump2d", opts = {} },
	{ "echasnovski/mini.misc", opts = {} },
	{ "echasnovski/mini.pick", opts = {} },
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
	{ "echasnovski/mini.animate", opts = { scroll = { enable = false }, resize = { enable = false } } },
	-- { "echasnovski/mini.base16", opts = {} },
	{ "echasnovski/mini.colors", opts = {} },
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
	{ "echasnovski/mini.hues", opts = { background = "#002734", foreground = "#c0c8cc" } },
	{ "echasnovski/mini.icons", opts = {} },
	{ "echasnovski/mini.indentscope", opts = {} },
	{ "echasnovski/mini.map", opts = {} },
	{ "echasnovski/mini.notify", event = "VeryLazy", opts = {} },
	{ "echasnovski/mini.starter", opts = {} },
	{ "echasnovski/mini.statusline", lazy = false, opts = {} },
	{ "echasnovski/mini.tabline", lazy = false, opts = {} },
	{ "echasnovski/mini.trailspace", opts = {} },

	-- Other
	{ "echasnovski/mini.doc", opts = {} },
	{ "echasnovski/mini.test", opts = {} },
}
