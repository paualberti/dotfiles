vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
vim.opt_local.commentstring = "// %s"

local term_command = "TermCommand"
vim.keymap.set("n", "<leader>te", ":" .. term_command .. " ./e^I", { desc = "Execute executable" }) -- Execute project
