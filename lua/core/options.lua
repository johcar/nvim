vim.opt.clipboard = "unnamedplus"   -- neovim gets access to system clipboard
vim.opt.cmdheight = 2			          -- more space for commands, might be nice for messages
vim.opt.smartindent = true		      -- indentation intelligence is good

-- tabs vs spaces
vim.opt.expandtab = true		        -- convert tabs to spaces
vim.opt.shiftwidth = 2              -- 2 spaces for each indent
vim.opt.tabstop = 2                 -- 2 spaces for each tab

-- numbers
vim.opt.number = true               -- show line numbers by default
vim.opt.relativenumber = true       -- show relative line numbers around current line

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
