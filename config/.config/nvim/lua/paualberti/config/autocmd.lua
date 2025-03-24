------------------
-- Set autocmds --
------------------

local augroup = vim.api.nvim_create_augroup("user_cmds", { clear = true })
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#FFCBE1", fg = "#000000" })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 300 })
	end,
	group = augroup,
	desc = "Highlight on yank",
})
vim.api.nvim_create_autocmd("VimResized", {
	command = "wincmd =",
	group = augroup,
	desc = "Resize splits on terminal resize",
})
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	callback = function()
		local save_cursor = vim.fn.getpos(".")
		pcall(function()
			vim.cmd([[%s/\s\+$//e]])
		end)
		vim.fn.setpos(".", save_cursor)
	end,
	group = augroup,
	desc = "Delete trailing whitspaces",
})
vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		local last_pos = vim.fn.line("'\"")
		if last_pos > 0 and last_pos <= vim.fn.line("$") then
			vim.cmd([[normal! g`"]])
		end
	end,
	group = augroup,
	desc = "Go to last location within a buffer",
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "help", "man" },
	callback = function()
		vim.keymap.set("n", "q", "<Cmd>wincmd q<CR>", { desc = "Quit help window" })
	end,
	group = augroup,
	desc = "Quit help window",
})
