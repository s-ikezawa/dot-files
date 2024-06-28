return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
    "nvim-treesitter/nvim-treesitter-textobjects",
    {
      "nvim-treesitter/nvim-treesitter-context",
      opts = {
        enable = true,
        mode = "topline",
        line_numbers = true
      },
    },
  },
  event = { "BufReadPre", "BufNewFile"},
  build = ":TSUpdate",
  cond = not vim.g.vscode,
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown" },
      callback = function(ev)
        require("treesitter-context").disable()
      end,
    })

    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vimdoc",
        "vim",
        "lua",
        "markdown",
        "markdown_inline",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
        }
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
      endwise = {
        enable = true,
      },
    })
  end
}
