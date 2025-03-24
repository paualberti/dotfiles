return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
	-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
	ft = "markdown",
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
