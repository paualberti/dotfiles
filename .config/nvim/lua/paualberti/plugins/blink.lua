return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = {
		-- "rafamadriz/friendly-snippets",
		"onsails/lspkind.nvim",
	},

	-- use a release tag to download pre-built binaries
	version = "*",
	-- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source using latest nightly rust with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept, C-n/C-p for up/down)
		-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys for up/down)
		-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
		--
		-- All presets have the following mappings:
		-- C-space: Open menu or open docs if already open
		-- C-e: Hide menu
		-- C-k: Toggle signature help
		--
		-- See the full "keymap" documentation for information on defining your own keymap.
		keymap = { preset = "default" },

		completion = {
			menu = {
				-- border = "single",
				draw = {
					components = {
						kind_icon = {
							ellipsis = false,
							text = function(ctx)
								local lspkind = require("lspkind")
								local icon = ctx.kind_icon
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, _ = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										icon = dev_icon
									end
								else
									icon = require("lspkind").symbolic(ctx.kind, {
										mode = "symbol",
									})
								end

								return icon .. ctx.icon_gap
							end,

							-- Optionally, use the highlight groups from nvim-web-devicons
							-- You can also add the same function for `kind.highlight` if you want to
							-- keep the highlight groups in sync with the icons.
							highlight = function(ctx)
								local hl = ctx.kind_hl
								if vim.tbl_contains({ "Path" }, ctx.source_name) then
									local dev_icon, dev_hl = require("nvim-web-devicons").get_icon(ctx.label)
									if dev_icon then
										hl = dev_hl
									end
								end
								return hl
							end,
						},
					},
				},
			},
			-- documentation = { window = { border = "single" } },
		},
		-- signature = { window = { border = "single" } },

		-- enabled = function()
		-- 	return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype)
		-- 		and vim.bo.buftype ~= "prompt"
		-- 		and vim.b.completion ~= false
		-- end,

		appearance = {
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			-- Useful for when your theme doesn't support blink.cmp
			-- Will be removed in a future release
			use_nvim_cmp_as_default = true,
			-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},

		-- Default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				buffer = {
					opts = {
						-- get all buffers, even ones like neo-tree
						-- get_bufnrs = vim.api.nvim_list_bufs
						-- or (recommended) filter to only "normal" buffers
						get_bufnrs = function()
							return vim.tbl_filter(function(bufnr)
								return vim.bo[bufnr].buftype == ""
							end, vim.api.nvim_list_bufs())
						end,
					},
					-- For writers
					-- keep case of first char
					-- transform_items = function(a, items)
					-- 	local keyword = a.get_keyword()
					-- 	local correct, case
					-- 	if keyword:match("^%l") then
					-- 		correct = "^%u%l+$"
					-- 		case = string.lower
					-- 	elseif keyword:match("^%u") then
					-- 		correct = "^%l+$"
					-- 		case = string.upper
					-- 	else
					-- 		return items
					-- 	end
					--
					-- 	-- avoid duplicates from the corrections
					-- 	local seen = {}
					-- 	local out = {}
					-- 	for _, item in ipairs(items) do
					-- 		local raw = item.insertText
					-- 		if raw == nil then
					-- 			return out
					-- 		end
					-- 		if raw:match(correct) then
					-- 			local text = case(raw:sub(1, 1)) .. raw:sub(2)
					-- 			item.insertText = text
					-- 			item.label = text
					-- 		end
					-- 		if not seen[item.insertText] then
					-- 			seen[item.insertText] = true
					-- 			table.insert(out, item)
					-- 		end
					-- 	end
					-- 	return out
					-- end,
				},
				-- 	cmdline = {
				-- 		-- ignores cmdline completions when executing shell commands
				-- 		enabled = function()
				-- 			return vim.fn.getcmdtype() ~= ":" or not vim.fn.getcmdline():match("^[%%0-9,'<>%-]*!")
				-- 		end,
				-- 	},
			},
		},

		-- Blink.cmp uses a Rust fuzzy matcher by default for typo resistance and significantly better performance
		-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
		-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
		-- default value is `prefer_rust_with_warning`
		--
		-- See the fuzzy documentation for more information
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
