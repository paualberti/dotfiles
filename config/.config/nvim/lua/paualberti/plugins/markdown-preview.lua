return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = "markdown",
	keys = {
		{ "<leader>mpr", "<Cmd>MarkdownPreview<CR>", desc = "Run" },
		{ "<leader>mps", "<Cmd>MarkdownPreviewStop<CR>", desc = "Stop" },
	},
}
