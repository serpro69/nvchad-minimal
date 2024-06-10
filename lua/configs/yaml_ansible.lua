-- configs for yaml and ansible files

-- custom file types for yaml.nvim
-- https://github.com/cuducos/yaml.nvim?tab=readme-ov-file#file-types
require("yaml_nvim").setup({ ft = { "yaml",  "yaml.ansible" } })

-- associate .j2 files with twig to get treesitter support
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"*.j2"},
  command = "set filetype=twig",
})

