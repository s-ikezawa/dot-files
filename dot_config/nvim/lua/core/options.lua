if not vim.g.vscode then
  -- VSCodeでは使えないoption
  vim.opt.swapfile = false
  vim.opt.clipboard = "unnamedplus"
  vim.opt.termguicolors = true
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.expandtab = true
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.list = true
  vim.opt.listchars = { tab = "»-", trail = "-", eol = "↲", extends = "»", precedes = "«", nbsp = "%" }
  vim.opt.hlsearch = true
  vim.opt.incsearch = true
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
  vim.opt.hlsearch = true
  vim.opt.incsearch = true
  vim.opt.ignorecase = true
  vim.opt.smartcase = true
  vim.opt.cmdheight = 0
  vim.opt.laststatus = 3
end
