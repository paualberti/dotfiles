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
		lazy = false,
		dependencies = {
			{ "williamboman/mason.nvim", opts = {} },
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"saghen/blink.cmp",
		},
		opts = {
			servers = {
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
		config = function(_, opts)
			vim.keymap.set("n", "<leader>cl", "<Cmd>Lazy<CR>", { desc = "Lazy" })
			vim.keymap.set("n", "<leader>cm", "<Cmd>Mason<CR>", { desc = "Mason" })

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
