return {
  'wbthomason/packer.nvim',

  'folke/tokyonight.nvim',

  'nvim-lua/plenary.nvim',
  'kyazdani42/nvim-web-devicons',


  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  "hrsh7th/nvim-cmp",

  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-emoji",


  'nvim-telescope/telescope.nvim',
  { 'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },


  'MunifTanjim/nui.nvim',
  { 'nvim-neo-tree/neo-tree.nvim', branch = "v3.x" },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require 'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "bash",
          "html",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "query",
          "regex",
          "tsx",
          "typescript",
          "vim",
          "yaml",
          "tsx",
          "typescript",
        },
      }
    end

  },


  'nvim-treesitter/nvim-treesitter-context',

  'nvim-lualine/lualine.nvim',

  'lewis6991/gitsigns.nvim',

  "nvimtools/none-ls.nvim",
  "windwp/nvim-autopairs",

  "numToStr/Comment.nvim",
  "folke/trouble.nvim",

  -- copilot
  "github/copilot.vim"
}
