return {
	"brianhuster/autosave.nvim",
	ft = "markdown",
	opts = {}, -- Configuration here
	config = function()
		vim.cmd("Autosave off")
	end,
	keys = { { "<leader>ma", "<Cmd>Autosave toggle<CR>", desc = "Autosave toggle" } },
}
