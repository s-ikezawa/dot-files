return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    {
      "nvim-treesitter/nvim-treesitter-context",
      opts = { enable = true, mode = "topline", line_numbers = true },
    },
  },
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown" },
      callback = function(ev)
        require("treesitter-context").disable()
      end,
    })

    treesitter.setup({
      highlight = {
        enable = true,
        disable = { "csv" },
      },
      indent = {
        enable = true,
      },
      endwise = { -- nvim-treesitter-endwise
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
        },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<BS>",
        },
      },
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "gowork",
      },
    })
  end,
}
