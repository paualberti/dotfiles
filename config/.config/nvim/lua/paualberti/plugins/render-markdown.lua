return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {},
	config = function()
		vim.cmd("RenderMarkdown disable")
	end,
	keys = {
		{ "<leader>mr", "<Cmd>RenderMarkdown toggle<CR>", desc = "Render Toggle" },
	},
}
