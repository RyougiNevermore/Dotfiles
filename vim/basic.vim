"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       ryougi nevermore
"       ryougi.nevermore@hotmail.com
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With nocompatible
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\<Space>"

" Fast saving
nmap <leader>w :w!<cr>

" Fast quit without save
nmap <leader>q :q!<cr>


" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Turn on the Wild menu
set wildmenu

" Enable syntax highlighting
syntax enable

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif


" Add a bit extra margin to the left
set foldcolumn=1

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/package.vim
source ~/.vim_runtime/theme.vim
source ~/.vim_runtime/extended.vim

source ~/.vim_runtime/airline.vim
source ~/.vim_runtime/anzu.vim
source ~/.vim_runtime/bufexplorer.vim
source ~/.vim_runtime/ctrlp.vim
source ~/.vim_runtime/emmet.vim
source ~/.vim_runtime/git.vim 
source ~/.vim_runtime/go.vim
source ~/.vim_runtime/goyo.vim
source ~/.vim_runtime/javascript.vim
source ~/.vim_runtime/leader-key.vim 
source ~/.vim_runtime/mru.vim
source ~/.vim_runtime/multiple-cursors.vim
source ~/.vim_runtime/nerdcommenter.vim
source ~/.vim_runtime/nerdtree.vim
source ~/.vim_runtime/python.vim
source ~/.vim_runtime/search.vim
source ~/.vim_runtime/sneak.vim
source ~/.vim_runtime/snippets.vim
source ~/.vim_runtime/surround.vim
source ~/.vim_runtime/syntastic.vim
source ~/.vim_runtime/yankstack.vim
