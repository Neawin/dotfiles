local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      autotag = {
        enable = true,
        filetypes = { "html", "tsx" },
      },
      ensure_installed = {
        -- defaults
        "vim",
        "lua",
        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "c_sharp",
        -- "vue", "svelte",
      },
    },
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        {
          "jose-elias-alvarez/null-ls.nvim",
          config = function()
            require "custom.configs.null-ls"
          end,
        },
        {
          "windwp/nvim-ts-autotag",
        },
      },
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
      end,
    },
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "lua-language-server",
          "html-lsp",
          "prettier",
          "stylua",
          "typescript-language-server",
          "angular-language-server",
          "omnisharp",
          "omnisharp-mono",
        },
      },
    },

    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup {
          filetypes = { "html", "tsx" },
        }
      end,
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup {
          -- for example, context is off by default, use this to turn it on
          show_current_context = true,
          show_current_context_start = false,
        }
      end,
    },
    {
      "iamcco/markdown-preview.nvim",
      lazy = false,
      run = "cd app && npm install",
      setup = function()
        vim.g.mkdp_filetypes = { "markdown" }
      end,
      ft = { "markdown" },
      config = function()
        vim.cmd [[" essentially just a copy of the config from the github page, I've tried removing and adding this line this doesnt make a difference.]]
      end,
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
return plugins
