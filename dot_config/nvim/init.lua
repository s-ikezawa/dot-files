if vim.g.vscode then
  require("code.options")
else
  require("neovim.lazy")
  require("neovim.options")
end
