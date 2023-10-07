-- keymaps of Neovim and installed plugins.

-- function to shorten mapping command, includes default options
local function map(mode, map, remapped, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, map, remapped, options)
end

-- set space to leader and localleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- NvimTree
map('n', '<leader>e', ':NvimTreeToggle<CR>')        -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

map('n', '<leader>1', ':b 1<CR>')
map('n', '<leader>2', ':b 2<CR>')
map('n', '<leader>3', ':b 3<CR>')
map('n', '<leader>4', ':b 4<CR>')
map('n', '<leader>5', ':b 5<CR>')
map('n', '<leader>6', ':b 6<CR>')
map('n', '<leader>7', ':b 7<CR>')
map('n', '<leader>8', ':b 8<CR>')

map('n', '<leader>q', ':bd<CR>')
