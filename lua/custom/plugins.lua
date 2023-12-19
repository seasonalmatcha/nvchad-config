local plugins = {
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      require "custom.configs.lint"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "dockerfile-language-server",
        "eslintd",
        "gopls",
        "prettierd",
        "prisma-language-server",
        "sqlls",
        "typescript-language-server",
        "golines",
        "goimports_reviser",
        "golines",
        "rust-analyzer",
        "emmet-language-server",
        "stylua",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvimtree"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "typescript",
        "html",
        "javascript",
        "tsx",
        "json",
        "prisma",
        "sql",
        "go",
        "gomod",
        "gosum",
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
            ["aa"] = "@parameter.outer",
            ["ia"] = "@parameter.inner",
          },
        },
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    cmd = "Harpoon",
  },
  {
    "NvChad/nvterm",
    opts = {
      terminals = {
        type_opts = {
          float = {
            col = 0.1,
            row = 0.075,
            width = 0.8,
            height = 0.8,
          },
          horizontal = {
            location = "rightbelow",
            split_ratio = 0.2,
          },
        },
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = { "LazyGit" },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },
  {
    "SmiteshP/nvim-navbuddy",
    event = "VeryLazy",
    cmd = { "Navbuddy" },
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    opts = { lsp = { auto_attach = true } },
  },
}

return plugins
