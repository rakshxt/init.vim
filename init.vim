:set number
:set relativenumber
:set mouse=a
:set ruler
:set clipboard+=unnamedplus
:set smartindent
:set autoindent
:set smarttab

:set smartcase
:set incsearch

:set diff
:syntax enable
:set hlsearch
:set nowrap
:set showcmd
:set scrolloff=5

:set autowrite
:set autowriteall
:set autoread

:set splitright

:set wildmenu
:set wildmode=full

:set listchars=nbsp:×,eol:↲,tab:→\ ,trail:·,extends:>,precedes:<,space:·,conceal:·
:set list

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'https://github.com/vim-airline/vim-airline'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'willothy/nvim-cokeline'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()


if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

