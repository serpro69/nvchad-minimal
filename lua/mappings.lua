require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- lspsaga
map("n", "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", { desc = "Open documentation hover" })
map("n", "<leader>lt", "<cmd>Lspsaga term_toggle<CR>", { desc = "Open floating terminal" })
map("n", "<leader>lc", "<cmd>Lspsaga code_action<CR>", { desc = "Run code-action" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
