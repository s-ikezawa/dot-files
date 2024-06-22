return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    local js_formatters = { { "biome", "prettierd", "prettier" } }

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        json = js_formatters,
        javascript = js_formatters,
        javascriptreact = js_formatters,
        typescript = js_formatters,
        typescriptreact = js_formatters,
        astro = js_formatters,
      },
      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
        quiet = false,
        async = false,
      }
    })

    vim.keymap.set({"n", "v"}, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 2000,
      })
    end, { desc = "format file or range" })
  end
}
