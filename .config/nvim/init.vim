set nocompatible

call plug#begin('~/.config/nvim/plugged')

" Dark theme for Vim
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'othree/html5.vim'

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" Auto close HTML tags
Plug 'alvan/vim-closetag'

" Post install (yarn install | npm install) then load plugin only for editing supported files
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" A (Neo)vim plugin for formatting code.
Plug 'sbdchd/neoformat'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" fzf is a general-purpose command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Settings
set scrolloff=8
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set encoding=utf8
set clipboard+=unnamedplus
set completeopt=menuone,noselect
set path+=**
set wildignore+=**/node_modules/**,.git


" Theme Dracula
if (has("termguicolors"))
set termguicolors
endif
syntax enable
colorscheme dracula

" Phython config (Phython 2 desabilitado)
let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/local/bin/python3'

" Disable Ruby support
let g:loaded_ruby_provider = 0

" Disable Perl support
let g:loaded_perl_provider = 0

" Disable Node.js support
let g:loaded_node_provider = 0

" Tmux
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

