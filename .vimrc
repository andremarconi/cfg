unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim


filetype plugin indent on      " Re-enable after setup
syntax enable                  " Enable vim syntax highlighting as is (enable != on)
set shell=$SHELL               " Set the default shell
set termencoding=utf-8         " Set the default encodings just in case $LANG isn't set
set encoding=utf-8             " Set the default encodings just in case $LANG isn't set
set autoindent                 " Indent the next line matching the previous line
set smartindent                " Smart auto-indent when creating a new line
set tabstop=2                  " Number of spaces each tab counts for
set shiftwidth=2               " The space << and >> moves the lines
set softtabstop=2              " Number of spaces for some tab operations
set shiftround                 " Round << and >> to multiples of shiftwidth
set expandtab                  " Insert spaces instead of actual tabs
set smarttab                   " Delete entire shiftwidth of tabs when they're inserted
set history=1000               " The number of history items to remember
set backspace=indent,eol,start " Backspace settings
set nostartofline              " Keep cursor in the same place after saves
set showcmd                    " Show command information on the right side of the command line
set ttyfast                 " Set that we have a fast terminal
set t_Co=256                " Explicitly tell Vim that the terminal supports 256 colors
set lazyredraw              " Don't redraw vim in all situations
set synmaxcol=500           " The max number of columns to try and highlight
set noerrorbells            " Don't make noise
set autoread                " Watch for file changes and auto update
set showmatch               " Set show matching parenthesis
set matchtime=2             " The amount of time matches flash
set display=lastline        " Display super long wrapped lines
set number                  " Shows line numbers
set nrformats-=octal        " Never use octal notation
set nojoinspaces            " Don't add 2 spaces when using J
set mouse=a                 " Enable using the mouse if terminal emulator
set mousehide               " Hide the mouse on typing
set hlsearch                " Highlight search terms
set incsearch               " Show searches as you type
set wrap                    " Softwrap text
set linebreak               " Don't wrap in the middle of words
set ignorecase              " Ignore case when searching
set smartcase               " Ignore case if search is lowercase, otherwise case-sensitive
set title                   " Change the terminal's title
set updatetime=2000         " Set the time before plugins assume you're not typing
set scrolloff=5             " Lines the cursor is to the edge before scrolling
set sidescrolloff=5         " Same as scrolloff but horizontal
set gdefault                " Adds g at the end of substitutions by default
set exrc                    " Source local .vimrc files
set secure                  " Don't load autocmds from local .vimrc files
set tags^=.tags,.git/tags   " Add local .tags file

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif


" https://kinbiko.com/vim/my-shiniest-vim-gems/
" Remove comments when joining lines with J
set formatoptions+=j

" Make |:find| discover recursive paths
set path+=**

" Completion options
set complete=.,w,b,u,t,kspell
set completeopt=menuone,noselect
set wildmenu                                           " Better completion in the CLI
set wildmode=longest:full,full                         " Completion settings

" Ignore these folders for completions
set wildignore+=.hg,.git,.svn                          " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg         " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.pyc " compiled object files
set wildignore+=*.resolved                             " package manager lock files
set wildignore+=tags,.tags

if has('clipboard')     " If the feature is available
  set clipboard=unnamed " copy to the system clipboard

  if has('unnamedplus')
    set clipboard+=unnamedplus
  endif
endif
