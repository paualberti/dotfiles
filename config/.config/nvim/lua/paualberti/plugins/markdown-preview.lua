return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
	keys = {
		{ "<leader>mr", "<Cmd>MarkdownPreview<CR>", desc = "Run" },
		{ "<leader>ms", "<Cmd>MarkdownPreviewStop<CR>", desc = "Stop" },
	},
}
