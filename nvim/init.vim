"---------------------------------mapleader----------------------------ini
let mapleader = " "
"------------------------------------ Plugin --------------------------
call plug#begin('~/.vim/plugged')
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-path'
    Plug 'onsails/lspkind-nvim'
    Plug 'saadparwaiz1/cmp_luasnip'

    Plug 'L3MON4D3/LuaSnip'
    Plug 'glepnir/lspsaga.nvim'

    " To use coc disable(comment out) LSP plugins first
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Additional lsp
    Plug 'jiangmiao/auto-pairs'

    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Useless Features
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'romgrk/barbar.nvim'
    Plug 'Yggdroot/indentLine'

    "Syntax
	Plug 'lilydjwg/colorizer'
    Plug 'sheerun/vim-polyglot'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    "Color
    Plug 'gruvbox-community/gruvbox'
    Plug 'ayu-theme/ayu-vim'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'folke/tokyonight.nvim'
    Plug 'rakr/vim-one'
call plug#end()

"----------------Emmet -------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-l>'
"------------------------------ General Settings-----------------------
set encoding=UTF-8
filetype plugin indent on
syntax on
set mouse=a
set wildmode=full
set shiftwidth=4 tabstop=4 softtabstop=4 expandtab smarttab
set cursorline
set laststatus=2
set hidden
set ignorecase
set nu
set incsearch
set nohlsearch
set nowrap
set autoindent smartindent
set nobackup nowritebackup
set splitbelow splitright
set clipboard=unnamedplus
set nocompatible
set bg=dark
"---------------------------- Key Remapping ---------------------------
"esc key remapping
imap jk <ESC>
imap kj <ESC>

" easy resize splits
nnoremap <leader><Up>   :resize +2<CR>
nnoremap <leader><Down> :resize -2<CR>
nnoremap <leader><Left> :vertical resize +2<CR>
nnoremap <leader><Right> :vertical resize -2<CR>

"switch b/w buffers
nnoremap <leader><tab>  :bnext<CR>
nnoremap <C-tab>    :bprevious<CR>
nnoremap <M-w>      :bdelete<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"nvim-tree
nnoremap <leader>e <cmd>NvimTreeToggle<cr>

"-------------------------- Auto command ------------------------------
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Call_fun
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

"proper format
"autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)
"autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)
"autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 1000)
"--------------------------- Sourcing ----------------------------

"-- color-config
source ~/.config/nvim/Plugin/color-config.vim

"-- lsp-config
source ~/.config/nvim/Plugin/lsp.lua
source ~/.config/nvim/Plugin/nvim-cmp.lua
"source ~/.config/nvim/coc.vim

"-- others
source ~/.config/nvim/Plugin/treesitter.lua
source ~/.config/nvim/Plugin/lualine.lua
source ~/.config/nvim/Plugin/nvim-tree.lua
"-------------------------- The End -----------------------------------

"_____    ____   ___
"|  ___|  |___ \ / _ \
"| |_ _____ __| | | | | ////////////faizan-20\\\\\\\\\\\\\
"|  _|_____/ __/| |_| | git - https://github.com/faizan-20/
"|_|      |_____|\___/

"source ~/.config/nvim/lua/faizan/lsp.lua
