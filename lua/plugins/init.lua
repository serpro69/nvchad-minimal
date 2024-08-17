return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "ansible-lint",
        "autotools-language-server",
        "css-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "goimports",
        "goimports-reviser",
        "golangci-lint",
        "golangci-lint-langserver",
        "gopls",
        "html-lsp",
        "kotlin-language-server",
        "lua-language-server",
        "marksman",
        "stylua",
        "prettier",
        "terraform-ls",
        "tflint",
        -- "tfsec", -- replaced by trivy
        "trivy",
        "typescript-language-server",
        "yaml-language-server",
      },
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "css",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
        "hcl",
        "html",
        "kotlin",
        "lua",
        "make",
        "terraform",
        "twig", -- an alternative to jinja since they're very similar
        "vim",
        "vimdoc",
        "yaml",
      },
    },
  },

  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {
        code_action = {
          extend_gitsigns = true,
        },
      }
    end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },

  {
    "aznhe21/actions-preview.nvim",
    config = function()
      require("actions-preview").setup {
        telescope = {
          sorting_strategy = "ascending",
          layout_strategy = "vertical",
          layout_config = {
            width = 0.8,
            height = 0.9,
            prompt_position = "top",
            preview_cutoff = 20,
            preview_height = function(_, _, max_lines)
              return max_lines - 15
            end,
          },
        },
      }
    end,
    event = "LspAttach",
  },

  {
    "cuducos/yaml.nvim",
    ft = { "yaml", "yaml.ansible" }, -- optional
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
    },
  },

  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   event = "BufEnter",
  --   config = function()
  --     require("codeium").setup {}
  --   end,
  -- },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- {
      --   "Exafunction/codeium.nvim",
      --   config = true,
      -- },
    },

    config = function(_, opts)
      -- table.insert(opts.sources, 1, { name = "codeium" })
      require("cmp").setup(opts)
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "BufEnter",
    opts = {
      highlight = {
        -- NB! don't match w/o extra colon, search via telescope and other tools won't be able to find the comments
        -- pattern = [[.*<(KEYWORDS)\s*]],
      },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- ref: https://github.com/folke/todo-comments.nvim?tab=readme-ov-file#%EF%B8%8F-configuration
    },
  },

  {
    -- custom telescope configs
    -- https://nvchad.com/docs/config/plugins
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "nvchad.configs.telescope"

      -- conf.defaults.mappings.i = {
      --   ["<C-j>"] = require("telescope.actions").move_selection_next,
      --   ["<Esc>"] = require("telescope.actions").close,
      -- }

      -- or
      -- table.insert(conf.defaults.mappings.i, your table)

      conf.extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          },
        },
      }

      return conf
    end,
  },

  {
    "nvim-telescope/telescope-ui-select.nvim",
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },

  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-telescope/telescope.nvim", -- Optional
  --     -- {
  --     --   "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
  --     --   opts = {},
  --     -- },
  --   },
  --   event = "BufEnter",
  --   config = function()
  --     require("codecompanion").setup {
  --       adapters = {
  --         llama3 = require("codecompanion.adapters").use("ollama", {
  --           schema = {
  --             model = {
  --               default = "llama3.1",
  --             },
  --             num_ctx = {
  --               default = 16384,
  --             },
  --             num_predict = {
  --               default = -1,
  --             },
  --           },
  --         }),
  --         codegemma = require("codecompanion.adapters").use("ollama", {
  --           schema = {
  --             model = {
  --               default = "codegemma",
  --             },
  --           },
  --         }),
  --       },
  --       strategies = {
  --         chat = {
  --           adapter = "llama3",
  --         },
  --         inline = {
  --           adapter = "codegemma",
  --         },
  --         agent = {
  --           adapter = "llama3",
  --         },
  --       },
  --     }
  --   end,
  -- },
}
