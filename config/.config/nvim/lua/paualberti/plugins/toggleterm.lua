return {
	"paualberti/toggleterm.nvim",
	branch = "master",
	opts = {},
	init = function()
		-- Function to locate an existing terminal buffer
		local function locate_terminal()
			for _, buf in ipairs(vim.api.nvim_list_bufs()) do
				if vim.bo[buf].buftype == "terminal" then
					return buf -- Return terminal buffer number
				end
			end
			return nil
		end

		function Close_terminals()
			local term_bufnr = locate_terminal()
			if term_bufnr then
				-- Close the existing terminals
				vim.api.nvim_buf_delete(term_bufnr, { force = true }) -- Force close
				Close_terminals() -- Recursively call
				return
			end
		end
	end,
	keys = {
		{ "<C-t>", "<Cmd>ToggleTerm<CR>", desc = "ToggleTerm", mode = { "n", "i" } },
		{
			"<C-c>",
			function()
				Close_terminals()
			end,
			desc = "Close Terminals",
		},
	},
}
