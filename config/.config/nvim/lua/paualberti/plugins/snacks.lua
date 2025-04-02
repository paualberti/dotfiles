return {
	"folke/snacks.nvim",
	lazy = false,
	dependencies = { "echasnovski/mini.icons" },
	priority = 1000,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = false },
		explorer = { enabled = false },
		image = {
			enabled = true,
			doc = {
				enabled = true,
				inline = true,
				float = true,
				max_width = 80,
				max_height = 40,
			},
		},
		indent = { enabled = true },
		input = { enabled = false },
		notifier = { enabled = true },
		picker = {
			enabled = true,
			matcher = {
				frecency = true,
				cwd_bonus = true,
				history_bonus = false,
			},
			formatters = {
				file = {
					filename_first = false,
					filename_only = false,
				},
			},
			win = {
				input = {
					keys = {
						["<C-d>"] = { "preview_scroll_down", mode = { "n", "i" } },
						["<C-u>"] = { "preview_scroll_up", mode = { "n", "i" } },
						["<C-f>"] = { "list_scroll_down", mode = { "n", "i" } },
						["<C-b>"] = { "list_scroll_up", mode = { "n", "i" } },
					},
				},
			},
			debug = { scores = false },
		},
		quickfile = { enabled = true },
		scroll = { enabled = false },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		-- Top Pickers & Explorer
		-- stylua: ignore start
		{ "<leader><space>", function() Snacks.picker.smart({ on_show = function() vim.cmd.stopinsert() end }) end,                 desc = "Smart Find Files" },
		{ "<leader>fo",      function() Snacks.picker.buffers({ on_show = function() vim.cmd.stopinsert() end }) end,               desc = "Open Buffers" },
		{ "<leader>fn",      function() Snacks.picker.notifications({ on_show = function() vim.cmd.stopinsert() end }) end,         desc = "Notification History" },
		-- Find
		{ "<leader>fc",      function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end,                                desc = "Find Config File" },
		{ "<leader>ff",      function() Snacks.picker.files() end,                                                                  desc = "Find Files" },
		{ "<leader>fg",      function() Snacks.picker.git_files() end,                                                              desc = "Find Git Files" },
		{ "<leader>fp",      function() Snacks.picker.projects({ on_show = function() vim.cmd.stopinsert() end }) end,              desc = "Projects" },
		{ "<leader>fr",      function() Snacks.picker.recent({ on_show = function() vim.cmd.stopinsert() end }) end,                desc = "Recent" },
		-- Git
		{ "<leader>gb",      function() Snacks.picker.git_branches({ on_show = function() vim.cmd.stopinsert() end }) end,          desc = "Git Branches" },
		{ "<leader>gl",      function() Snacks.picker.git_log({ on_show = function() vim.cmd.stopinsert() end }) end,               desc = "Git Log" },
		{ "<leader>gL",      function() Snacks.picker.git_log_line({ on_show = function() vim.cmd.stopinsert() end }) end,          desc = "Git Log Line" },
		{ "<leader>gs",      function() Snacks.picker.git_status({ on_show = function() vim.cmd.stopinsert() end }) end,            desc = "Git Status" },
		{ "<leader>gS",      function() Snacks.picker.git_stash({ on_show = function() vim.cmd.stopinsert() end }) end,             desc = "Git Stash" },
		{ "<leader>gd",      function() Snacks.picker.git_diff({ on_show = function() vim.cmd.stopinsert() end }) end,              desc = "Git Diff (Hunks)" },
		{ "<leader>gf",      function() Snacks.picker.git_log_file({ on_show = function() vim.cmd.stopinsert() end }) end,          desc = "Git Log File" },
		-- Grep
		{ "<leader>sb",      function() Snacks.picker.lines() end,                                                                  desc = "Buffer Lines" },
		{ "<leader>sB",      function() Snacks.picker.grep_buffers() end,                                                           desc = "Grep Open Buffers" },
		{ "<leader>sg",      function() Snacks.picker.grep() end,                                                                   desc = "Grep" },
		{ "<leader>sw",      function() Snacks.picker.grep_word({ on_show = function() vim.cmd.stopinsert() end }) end,             desc = "Visual selection or word", mode = { "n", "x" } },
		-- Search
		{ '<leader>s"',      function() Snacks.picker.registers({ on_show = function() vim.cmd.stopinsert() end }) end,             desc = "Registers" },
		{ "<leader>s/",      function() Snacks.picker.search_history({ on_show = function() vim.cmd.stopinsert() end }) end,        desc = "Search History" },
		{ "<leader>sa",      function() Snacks.picker.autocmds() end,                                                               desc = "Autocmds" },
		{ "<leader>sc",      function() Snacks.picker.command_history({ on_show = function() vim.cmd.stopinsert() end }) end,       desc = "Command History" },
		{ "<leader>sC",      function() Snacks.picker.commands() end,                                                               desc = "Commands" },
		{ "<leader>sd",      function() Snacks.picker.diagnostics({ on_show = function() vim.cmd.stopinsert() end }) end,           desc = "Diagnostics" },
		{ "<leader>sD",      function() Snacks.picker.diagnostics_buffer({ on_show = function() vim.cmd.stopinsert() end }) end,    desc = "Buffer Diagnostics" },
		{ "<leader>sh",      function() Snacks.picker.help() end,                                                                   desc = "Help Pages" },
		{ "<leader>sH",      function() Snacks.picker.highlights({ on_show = function() vim.cmd.stopinsert() end }) end,            desc = "Highlights" },
		{ "<leader>si",      function() Snacks.picker.icons({ on_show = function() vim.cmd.stopinsert() end }) end,                 desc = "Icons" },
		{ "<leader>sj",      function() Snacks.picker.jumps({ on_show = function() vim.cmd.stopinsert() end }) end,                 desc = "Jumps" },
		{ "<leader>sk",      function() Snacks.picker.keymaps() end,                                                                desc = "Keymaps" },
		{ "<leader>sl",      function() Snacks.picker.loclist({ on_show = function() vim.cmd.stopinsert() end }) end,               desc = "Location List" },
		{ "<leader>sm",      function() Snacks.picker.marks({ on_show = function() vim.cmd.stopinsert() end }) end,                 desc = "Marks" },
		{ "<leader>sM",      function() Snacks.picker.man({ on_show = function() vim.cmd.stopinsert() end }) end,                   desc = "Man Pages" },
		{ "<leader>sp",      function() Snacks.picker.lazy({ on_show = function() vim.cmd.stopinsert() end }) end,                  desc = "Search for Plugin Spec" },
		{ "<leader>sq",      function() Snacks.picker.qflist({ on_show = function() vim.cmd.stopinsert() end }) end,                desc = "Quickfix List" },
		{ "<leader>sr",      function() Snacks.picker.resume() vim.cmd.stopinsert() end,                                            desc = "Resume" },
		{ "<leader>su",      function() Snacks.picker.undo({ on_show = function() vim.cmd.stopinsert() end }) end,                  desc = "Undo History" },
		{ "<leader>uC",      function() Snacks.picker.colorschemes({ on_show = function() vim.cmd.stopinsert() end }) end,          desc = "Colorschemes" },
		-- LSP
		{ "grd",             function() Snacks.picker.lsp_definitions({ on_show = function() vim.cmd.stopinsert() end }) end,       desc = "Goto Definition" },
		{ "grD",             function() Snacks.picker.lsp_declarations({ on_show = function() vim.cmd.stopinsert() end }) end,      desc = "Goto Declaration" },
		{ "grr",             function() Snacks.picker.lsp_references({ on_show = function() vim.cmd.stopinsert() end }) end,        nowait = true,                     desc = "References" },
		{ "gri",             function() Snacks.picker.lsp_implementations({ on_show = function() vim.cmd.stopinsert() end }) end,   desc = "Goto Implementation" },
		{ "gry",             function() Snacks.picker.lsp_type_definitions({ on_show = function() vim.cmd.stopinsert() end }) end,  desc = "Goto T[y]pe Definition" },
		{ "<leader>ss",      function() Snacks.picker.lsp_symbols({ on_show = function() vim.cmd.stopinsert() end }) end,           desc = "LSP Symbols" },
		{ "<leader>sS",      function() Snacks.picker.lsp_workspace_symbols({ on_show = function() vim.cmd.stopinsert() end }) end, desc = "LSP Workspace Symbols" },
		-- Other
		{ "<leader>uz",      function() Snacks.zen() end,                                                                           desc = "Toggle Zen Mode" },
		{ "<leader>uZ",      function() Snacks.zen.zoom() end,                                                                      desc = "Toggle Zoom" },
		{ "<leader>n",       function() Snacks.notifier.show_history() end,                                                         desc = "Notification History" },
		{ "<leader>bd",      function() Snacks.bufdelete() end,                                                                     desc = "Delete Buffer" },
		{ "<leader>cR",      function() Snacks.rename.rename_file() end,                                                            desc = "Rename File" },
		{ "<leader>gB",      function() Snacks.gitbrowse() end,                                                                     desc = "Git Browse",               mode = { "n", "x" } },
		{ "<leader>gg",      function() Snacks.lazygit() end,                                                                       desc = "Lazygit" },
		{ "<leader>un",      function() Snacks.notifier.hide() end,                                                                 desc = "Dismiss All Notifications" },
		-- stylua: ignore end
		{
			"<leader>N",
			function()
				Snacks.win({
					file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
					width = 0.6,
					height = 0.6,
					border = "rounded",
					wo = { spell = false, wrap = false, signcolumn = "yes", statuscolumn = " ", conceallevel = 3 },
				})
			end,
			desc = "Neovim News",
		},
	},
	init = function()
		vim.api.nvim_create_autocmd("User", {
			pattern = "VeryLazy",
			callback = function()
				-- Setup some globals for debugging (lazy-loaded)
				_G.dd = function(...)
					Snacks.debug.inspect(...)
				end
				_G.bt = function()
					Snacks.debug.backtrace()
				end
				vim.print = _G.dd -- Override print to use snacks for `:=` command

				-- Create some toggle mappings
				Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
				Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
				Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
				Snacks.toggle.diagnostics():map("<leader>ud")
				Snacks.toggle.line_number():map("<leader>ul")
				Snacks.toggle
					.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
					:map("<leader>uc")
				Snacks.toggle.treesitter():map("<leader>uT")
				Snacks.toggle
					.option("background", { off = "light", on = "dark", name = "Dark Background" })
					:map("<leader>ub")
				Snacks.toggle.inlay_hints():map("<leader>uh")
				Snacks.toggle.indent():map("<leader>ug")
				Snacks.toggle.dim():map("<leader>uD")
			end,
		})
	end,
}
