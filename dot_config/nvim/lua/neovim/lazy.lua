local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  require("neovim.plugins.catppuccin"),
  require("neovim.plugins.nvim-treesitter"),
  require("neovim.plugins.which-key"),
  require("neovim.plugins.nvim-tree"),
  require("neovim.plugins.nvim-autopairs"),
})
