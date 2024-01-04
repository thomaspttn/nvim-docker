-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- -- Set tab width to 4 spaces
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Use spaces instead of tabs
vim.o.expandtab = true

-- enable colors
vim.o.termguicolors = true

-- bash shell
vim.o.shell = '/bin/bash'

-- delim at column 81
vim.cmd[[set colorcolumn=81]]

