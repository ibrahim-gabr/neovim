return {
  { "dhruvasagar/vim-table-mode", ft = { "markdown" } },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    commit = "a2c2493c21cf61e5554ee8bc83da75bd695921da",
    ft = { "markdown", "Avante", "copilot-chat", "codecompanion", "opencode_output" },
    opts = {
      render_modes = true,
      file_types = { "markdown", "Avante", "copilot-chat", "codecompanion", "opencode_output" },
      anti_conceal = { enabled = false },
      sign = {
        enabled = false,
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function(plugin)
      local package = vim.json.decode(table.concat(vim.fn.readfile(plugin.dir .. "/package.json"), "\n"))
      vim.fn.system({ plugin.dir .. "/app/install.sh", "v" .. package.version })
      if vim.v.shell_error ~= 0 then
        error("markdown-preview.nvim build failed")
      end
    end,
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  }, }
