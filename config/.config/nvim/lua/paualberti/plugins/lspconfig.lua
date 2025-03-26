-- LSP Plugins
return {
	{
		-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
		-- used for completion, annotations and signatures of Neovim apis
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				-- Load luvit types when the `vim.uv` word is found
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		-- Main LSP Configuration
		"neovim/nvim-lspconfig",
		event = "BufEnter",
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} },
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
				zls = {},
				clangd = {},
				lua_ls = {
					settings = {
						Lua = {
							completion = {
								callSnippet = "Replace",
							},
							-- diagnostics = { disable = { "missing-fields" } },
						},
					},
				},
			},
		},
		keys = {
			{ "<leader>cl", "<Cmd>Lazy<CR>", desc = "Lazy" },
			{ "<leader>cm", "<Cmd>Mason<CR>", desc = "Mason" },
			{ "<leader>cr", vim.lsp.buf.rename, desc = "Rename Object" },
			{ "<leader>ca", vim.lsp.buf.code_action, desc = "Action" },
		},
		config = function(_, opts)
			local ensure_installed = vim.tbl_keys(opts.servers or {})
			vim.list_extend(ensure_installed, {
				"stylua", -- Used to format Lua code
				"clang-format",
			})
			require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
			for server, config in pairs(opts.servers) do
				config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
				require("lspconfig")[server].setup(config)
			end
		end,
	},
}
