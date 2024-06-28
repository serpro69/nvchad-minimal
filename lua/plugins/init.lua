return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
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
        "css-lsp",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "html-lsp",
        "kotlin-language-server",
        "lua-language-server",
        "marksman",
        "stylua",
        "prettier",
        "terraform-ls",
        "tflint",
        "tfsec",
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
        "hcl",
        "html",
        "kotlin",
        "lua",
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
      require("lspsaga").setup {}
    end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },

  {
    "cuducos/yaml.nvim",
    ft = { "yaml", "yaml.ansible" }, -- optional
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
    },
  },

  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    event = "BufEnter",
    config = function()
      require("codeium").setup {}
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "Exafunction/codeium.nvim",
        config = true,
      },
    },

    config = function(_, opts)
      table.insert(opts.sources, 1, { name = "codeium" })
      require("cmp").setup(opts)
    end,
  },

}
