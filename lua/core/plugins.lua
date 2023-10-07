-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim

-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Import with protected call
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Setup
lazy.setup({
  spec = {
    -- Colorscheme:
    {
      'navarasu/onedark.nvim',
      lazy = false,
      priority = 1000 -- load before other plugins
    },

    -- Icons
    { 'nvim-tree/nvim-web-devicons', lazy = true },
    
    -- File explorer
    {'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons' },
    -- Bufferline
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    -- Lsp setup
    { 'neovim/nvim-lspconfig' },
    { 'simrat39/rust-tools.nvim'},
    -- Syntax highlights
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    -- Autocomplete
    {
      'hrsh7th/nvim-cmp',
      -- load cmp on InsertEnter
      event = 'InsertEnter',
      -- these dependencies will only be loaded when cmp loads
      -- dependencies are always lazy-loaded unless specified otherwise
      dependencies = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
      },
    },
    {
      'vimwiki/vimwiki',
      init = function()
        vim.g.vimwiki_list = {
          {
            path = '~/vimwiki/',
            syntax = 'markdown',
            ext = '.md',
          }
        }
      end
    },
    {
      'instant-markdown/vim-instant-markdown'
    }
  }
})
