require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", { desc = "Open documentation hover"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
