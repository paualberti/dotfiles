return {
	"brianhuster/live-preview.nvim",
	dependencies = {
		-- "ibhagwan/fzf-lua",
	},
	ft = "markdown",
	keys = {
		{ "<leader>ms", "<Cmd>LivePreview start<CR>", desc = "Start" },
		{ "<leader>mc", "<Cmd>LivePreview close<CR>", desc = "Close" },
	},
	config = function()
		local aug = vim.api.nvim_create_augroup("LivePreview", { clear = true })

		vim.api.nvim_create_autocmd("VimLeave", {
			pattern = "*.md",
			callback = function()
				vim.cmd("LivePreview close")
			end,
			desc = "Automatically stop LivePreview",
			group = aug,
		})
	end,
}
