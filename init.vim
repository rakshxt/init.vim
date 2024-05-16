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

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


Plug 'https://github.com/vim-airline/vim-airline'

Plug 'nvim-lua/plenary.nvim'
Plug 'willothy/nvim-cokeline'

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'projekt0n/github-nvim-theme'

Plug 'neovim/nvim-lspconfig'

call plug#end()


lua << EOF
-- Setup nvim-cmp.
local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
}

-- Setup lspconfig.
local nvim_lsp = require'lspconfig'

-- Enable the following language servers
local servers = { 'clangd' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
end

vim.api.nvim_set_keymap('n', 'gt', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
EOF


"--------------------------------------------------------------------------------------------------------------------------------
"--------------------------------------------------------------------------------------------------------------------------------
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if (has('termguicolors'))
  set termguicolors
endif

colorscheme github_dark_colorblind

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
