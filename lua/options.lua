require "nvchad.options"

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

o.relativenumber = true

-- set treesitter fold on expressions (from Andy)
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldtext = ""
o.foldenable = false
o.foldnestmax = 2
o.foldlevel = 99
o.foldlevelstart = 1
o.foldcolumn = "0"
o.cursorline = false
-- vim.g.markdown_folding = 1

