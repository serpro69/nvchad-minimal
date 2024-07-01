local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    lua = { "stylua" },
    tf = { "tflint", "tfsec" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
