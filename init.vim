:set number
:set relativenumber

:set mouse=a

:set clipboard+=unnamedplus

:set smartindent
:set autoindent
:set smarttab

:set smartcase
:set incsearch

:syntax enable
:set hlsearch
:set nowrap
:set showcmd
:set scrolloff=6

:set autowrite

:set splitright

:set listchars=nbsp:×,eol:↲,tab:→\ ,trail:·,extends:>,precedes:<,space:·,conceal:·
:set list

:set tabstop=4
:set shiftwidth=4
:set expandtab


call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/neoclide/coc.nvim'

Plug 'https://github.com/vim-airline/vim-airline'

Plug 'nvim-lua/plenary.nvim'
Plug 'willothy/nvim-cokeline'

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'projekt0n/github-nvim-theme'

call plug#end()


if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

colorscheme github_dark_colorblind

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'