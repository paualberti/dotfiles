-----------------
-- Set keymaps --
-----------------

vim.keymap.set("n", "<leader>x", "<Cmd>source<CR>", { desc = "Source file" })

vim.keymap.set("n", "<leader>z", "z=", { desc = "Spelling suggestions" })
vim.keymap.set("n", "<leader>i", "=gg=G", { desc = "Indent buffer" })

-- Improve consistency
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set({ "i", "x" }, "<C-c>", "<Esc>")
vim.keymap.set("n", "J", "mzJ`z")

-- Replace visually selected text
vim.keymap.set("x", "<leader>rf", '"hy:%s/<C-r>h/', { desc = "in File" })
vim.keymap.set("x", "<leader>rl", '"hy:s/<C-r>h/', { desc = "in Line" })

-- Move by visible lines. Notes:
-- - Don't map in Operator-pending mode because it severely changes behavior:
--   like `dj` on non-wrapped line will not delete it.
-- - Condition on `v:count == 0` to allow easier use of relative line numbers.
vim.keymap.set({ "n", "x" }, "j", [[v:count == 0 ? 'gj' : 'j']], { expr = true })
vim.keymap.set({ "n", "x" }, "k", [[v:count == 0 ? 'gk' : 'k']], { expr = true })

-- Copy/paste with system clipboard
vim.keymap.set({ "n", "x" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
-- - Paste in Visual with `P` to not copy selected text (`:h v_P`)
vim.keymap.set("x", "<leader>p", '"+P', { desc = "Paste from system clipboard" })

-- Search inside visually highlighted text. Use `silent = false` for it to
-- make effect immediately.
vim.keymap.set("x", "g/", "<esc>/\\%V", { silent = false, desc = "Search inside visual selection" })

-- Search visually selected text (slightly better than builtins in
-- Neovim>=0.8 but slightly worse than builtins in Neovim>=0.10)
-- TODO: Remove this after compatibility with Neovim=0.9 is dropped
if vim.fn.has("nvim-0.10") == 0 then
	vim.keymap.set("x", "*", [[y/\V<C-R>=escape(@", '/\')<CR><CR>]], { desc = "Search forward" })
	vim.keymap.set("x", "#", [[y?\V<C-R>=escape(@", '?\')<CR><CR>]], { desc = "Search backward" })
end
