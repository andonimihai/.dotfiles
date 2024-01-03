-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'folke/tokyonight.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'kyazdani42/nvim-web-devicons'

  use 'nvim-telescope/telescope.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use 'MunifTanjim/nui.nvim'
  use { 'nvim-neo-tree/neo-tree.nvim', branch = "v2.x" }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use 'nvim-treesitter/nvim-treesitter-context'


  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"

  use 'nvim-lualine/lualine.nvim'

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }

  -- use "williamboman/nvim-lsp-installer"

  use "nvimtools/none-ls.nvim"
  use "windwp/nvim-autopairs"

  use "numToStr/Comment.nvim"
  use "folke/trouble.nvim"

  -- copilot
  use "github/copilot.vim"

end)
