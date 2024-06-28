return {
  "stevearc/conform.nvim",
  event = { "bufReadPre", "BufNewFile" },
  cond = not vim.g.vscode,
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },
      format_on_save = {
        lsp_fallback = true,
        quiet = false,
        async = false,
        timeout_ms = 500,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>l", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
