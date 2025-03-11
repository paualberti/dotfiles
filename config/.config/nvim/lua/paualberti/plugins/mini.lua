return {
	-- Text editing
	{ "echasnovski/mini.ai", version = "*", opts = {} },
	{ "echasnovski/mini.align", version = "*", opts = { mappings = { start_with_preview = "" } } },
	-- { "echasnovski/mini.comment", version = "*",  opts = {}},
	-- { "echasnovski/mini.completion", version = "*",  opts = {}},
	-- { "echasnovski/mini.move", version = "*",  opts = {}},
	-- { "echasnovski/mini.operators", version = "*",  opts = {}},
	{ "echasnovski/mini.pairs", version = "*", opts = { mappings = { ["`"] = false } } },
	-- { "echasnovski/mini.snippets", version = "*",  opts = {}},
	{ "echasnovski/mini.splitjoin", version = "*", opts = {} },
	{ "echasnovski/mini.surround", version = "*", opts = {} },

	-- General workflow
	-- { "echasnovski/mini.basics", version = "*",  opts = {}},
	{ "echasnovski/mini.bracketed", version = "*", opts = {} },
	-- { "echasnovski/mini.bufremove", version = "*",  opts = {}},
	-- { "echasnovski/mini.clue", version = "*",  opts = {}},
	-- { "echasnovski/mini.diff", version = "*",  opts = {}},
	-- { "echasnovski/mini.extra", version = "*",  opts = {}},
	-- { "echasnovski/mini.files", version = "*",  opts = {}},
	-- { "echasnovski/mini-git", version = "*",  opts = {}},
	-- { "echasnovski/mini.jump", version = "*",  opts = {}},
	-- { "echasnovski/mini.jump2d", version = "*",  opts = {}},
	-- { "echasnovski/mini.misc", version = "*",  opts = {}},
	-- { "echasnovski/mini.pick", version = "*",  opts = {}},
	-- { "echasnovski/mini.sessions", version = "*",  opts = {}},
	-- { "echasnovski/mini.visits", version = "*",  opts = {}},

	-- Appearance
	-- {
	-- 	"echasnovski/mini.animate",
	-- 	version = "*",
	--
	-- 	opts = { scroll = { enable = false }, resize = { enable = false } },
	-- },
	-- { "echasnovski/mini.base16", version = "*",  opts = {}},
	-- { "echasnovski/mini.colors", version = "*",  opts = {}},
	-- { "echasnovski/mini.cursorword", version = "*",  opts = {}},
	{
		"echasnovski/mini.hipatterns",
		version = "*",
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
	-- { "echasnovski/mini.hues", version = "*",  opts = { background = "#002734", foreground = "#c0c8cc" }},
	-- { "echasnovski/mini.icons", version = "*",  opts = {}},
	-- { "echasnovski/mini.indentscope", version = "*", opts = {}},
	-- { "echasnovski/mini.map", version = "*",  opts = {}},
	{ "echasnovski/mini.notify", version = "*", opts = {} },
	-- { "echasnovski/mini.starter", version = "*",  opts = {}},
	{ "echasnovski/mini.statusline", version = "*", opts = {} },
	{ "echasnovski/mini.tabline", version = "*", opts = {} },
	-- { "echasnovski/mini.trailspace", version = "*",  opts = {}},

	-- Other
	-- { "echasnovski/mini.doc", version = "*",  opts = {}},
	-- { "echasnovski/mini.test", version = "*",  opts = {}},
}
