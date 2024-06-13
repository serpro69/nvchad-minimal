-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "ansiblels",
  "cssls",
  "dockerls",
  "docker_compose_language_service",
  "html",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
        ["https://json.schemastore.org/liquibase-3.2.json"] = {
          "/src/main/resources/*/changelog/*",
          "/src/main/resources/*/liquibase/*",
        },
      },
    },
  },
}

--[[ lspconfig.kotlin_language_server.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = {
    '/home/sergio/Projects/clone/kotlin-language-server/server/build/install/server/bin/kotlin-language-server',
  },
  ft = { "kotlin", "kt" }
} ]]

lspconfig.kotlin_language_server.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "kotlin", "kts" },
  -- https://github.com/fwcd/kotlin-language-server/issues/559#issuecomment-2002050294
  -- https://github.com/AlexandrosAlexiou/.dotfiles/blob/eab23f91aad9fcc4e5c0c65e0f4f8cf6a968f7d6/nvim/lua/tt/_plugins/lsp/config/servers.lua#L38-L40
  root_dir = function()
    return vim.fn.getcwd()
  end,
  settings = {
    kotlin = {
      compiler = {
        jvm = {
          target = "21",
        },
      },
    },
    hints = {
      typeHints = true,
      parameterHints = true,
      chainedHints = true,
    },
  },
}
