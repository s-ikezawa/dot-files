return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  cond = not vim.g.vscde,
  config = function()
    require("noice").setup({
    })
  end
}
