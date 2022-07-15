"=================================================================================
"general
"=================================================================================

syntax on
set autoread
set nobackup
set nowritebackup
set noswapfile
set nu 
set foldlevelstart=99
set scrolloff=7
"use y and p with the system clipboard
set clipboard=unnamedplus

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set wildignore+=*.next/*


"==================================================================================
"plugins
"==================================================================================

call plug#begin('~/.config/nvim/autoload/')

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plug 'neovim/nvim-lspconfig'
" Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

"Colour scheme
" My fave colour schemes:
" dracula/dracula-theme, rakr/vim-one, gosuiwi/vim-atom-dark,
" phanviet/vim-monokai-pro rhysd/vim-color-spring-night arzg/vim-colors-xcode
" kyoz/purify 'jonathanfilip/vim-lucius'
" Plug 'catppuccin/nvim', {'as': 'catppuccin'}

"Treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Markdown preview
" Plug 'ellisonleao/glow.nvim'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

"Language packs
" Plug 'sheerun/vim-polyglot'

"Nvim motions
" Plug 'phaazon/hop.nvim'

"LSP autocomplete
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

"File browsing
" Plug 'nvim-telescope/telescope-file-browser.nvim'

"Native LSP
" Plug 'neovim/nvim-lspconfig'

"Buffer navigation
" Plug 'nvim-lualine/lualine.nvim'

"Go
"Plug 'fatih/vim-go'

"debugging
" Plug 'mfussenegger/nvim-dap'
" Plug 'leoluz/nvim-dap-go'
" Plug 'rcarriga/nvim-dap-ui'
" Plug 'theHamsta/nvim-dap-virtual-text'
" Plug 'nvim-telescope/telescope-dap.nvim'

"Grammar checking because I can't english
Plug 'rhysd/vim-grammarous'

"Telescope Requirements
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"git diff
Plug 'sindrets/diffview.nvim'

"magit
Plug 'TimUntersberger/neogit'

"todo comments
Plug 'folke/todo-comments.nvim'

"devicons
Plug 'kyazdani42/nvim-web-devicons'

"fullstack dev
" Plug 'pangloss/vim-javascript' "JS support
" Plug 'leafgarland/typescript-vim' "TS support
" Plug 'maxmellon/vim-jsx-pretty' "JS and JSX syntax
" Plug 'jparise/vim-graphql' "GraphQL syntax
" Plug 'mattn/emmet-vim'

call plug#end()

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Coc config
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" lua require("lsp-config")
