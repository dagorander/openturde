-- Configuring Neovim from scratch

-- NOTES
-- Nvim Lua documentation: https://neovim.io/doc/user/lua.html
-- Packer: https://github.com/wbthomason/packer.nvim
-- Treesitter? Not sure if just custom: https://github.com/nvim-treesitter/nvim-treesitter

-- vim.o = editor options
vim.o.tabstop = 4

-- vim.wo = window-scoped local options
vim.wo.number = true
vim.wo.relativenumber = true

-- TODO: Figure out how to do this if file is C
-- https://vi.stackexchange.com/questions/356/how-can-i-set-up-a-ruler-at-a-specific-column
-- TODO: Figure out how to control colours 
--vim.cmd([[ set colorcolumn=80]])

