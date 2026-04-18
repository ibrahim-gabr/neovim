local function extend_unique(list, items)
  local seen = {}

  for _, item in ipairs(list or {}) do
    seen[item] = true
  end

  for _, item in ipairs(items) do
    if not seen[item] then
      table.insert(list, item)
      seen[item] = true
    end
  end
end

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      extend_unique(opts.ensure_installed, {
        "bash",
        "blade",
        "css",
        "gitignore",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "json5",
        "lua",
        "markdown",
        "markdown_inline",
        "php",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_include = { "blade", "php" },
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter" },
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "blade-formatter",
        "eslint-lsp",
        "intelephense",
        "php-cs-fixer",
        "phpcs",
        "prettier",
        "stylua",
        "tailwindcss-language-server",
      },
    },
  },
}
