-- Enable line numbers
vim.opt.number = true

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Enable mouse support
vim.opt.mouse = 'a'

-- Set tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Undo file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Enable relative line numbers
vim.o.relativenumber = true

-- copy clipboard
vim.opt.clipboard:append("unnamedplus")
