return {
  'wbthomason/packer.nvim',

  'folke/tokyonight.nvim',

  'nvim-lua/plenary.nvim',
  'kyazdani42/nvim-web-devicons',

  'nvim-telescope/telescope.nvim',
  {
    "telescope.nvim",
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    }
  },


  'MunifTanjim/nui.nvim',
  { 'nvim-neo-tree/neo-tree.nvim',     branch = "v3.x" },

  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

  'nvim-treesitter/nvim-treesitter-context',


  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  'nvim-lualine/lualine.nvim',

  'lewis6991/gitsigns.nvim',

  "nvimtools/none-ls.nvim",
  "windwp/nvim-autopairs",

  "numToStr/Comment.nvim",
  "folke/trouble.nvim",

  -- copilot
  "github/copilot.vim"
}
