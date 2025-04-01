return {
	"brianhuster/live-preview.nvim",
	-- dependencies = { "ibhagwan/fzf-lua" },
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
	keys = {
		{ "<leader>ms", "<Cmd>LivePreview start<CR>", desc = "LivePreview Start" },
		{ "<leader>mc", "<Cmd>LivePreview close<CR>", desc = "LivePreview Close" },
	},
}
