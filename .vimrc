set nocompatible        " not vi compatible

" Settings
filetype plugin indent on " enable file type detection
syntax on                 " turn on syntax highlighting
set showmatch             " show matching braces when text indicator is over them
set autoindent
set number                " number lines
set relativenumber        " relative line numbering

set noerrorbells visualbell t_vb=

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

set path+=**              " Search down into subfolders
set wildmenu
set nowrap
if !('nvim')
  set clipboard=unnamed
else
  set clipboard+=unnamedplus
endif
if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && v:version >= 700
  let &g:listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
  let &g:fillchars = "vert:\u250b,fold:\u00b7"
else
  setglobal listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif
" Make it obvious where 80 characters is
" set textwidth=80
" set colorcolumn=+1
set colorcolumn=80

" Color Scheme
" Os 'Schemes' estão no folder colors
set background=dark     " Setting dark mode
let g:gruvbox_bold = '1'
let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox



if has('nvim')
  " Phython config (Phython 2 desabilitado)
  let g:loaded_python_provider = 0
  let g:python3_host_prog = '/usr/local/bin/python3'

  " Disable Ruby support
  let g:loaded_ruby_provider = 0

  " Disable Perl support
  let g:loaded_perl_provider = 0

  " Disable Node.js support
  let g:loaded_node_provider = 0
endif

set wildignorecase
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
set wildignore+=__pycache__,*.egg-info,.pytest_cache,.mypy_cache/**


" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" unbind keys
map <C-a> <Nop>
map <C-x> <Nop>
nmap Q <Nop>

" Leader
let mapleader = ","
" Editar, salvar e carregar o .vimrc
nnoremap ev :e $MYVIMRC<CR>
nnoremap rv :w!<Esc>:source $MYVIMRC<CR>

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
