return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = not vim.g.vcode,
    }
  },
  cond = not vim.g.vscode,
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

    local telescope = require("telescope")
    telescope.setup({
      file_ignore_patterns = {},
    })

    telescope.load_extension("fzf")
    telescope.load_extension("noice")
  end
}
