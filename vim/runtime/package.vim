"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       ryougi nevermore
"       ryougi.nevermore@hotmail.com
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => package 

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim to install vundle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible
end

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim'

Plugin 'jlanzarotta/bufexplorer'

Plugin 'yegappan/mru'

Plugin 'maxbrunsfeld/vim-yankstack'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'mattn/emmet-vim'

Plugin 'honza/vim-snippets'

Plugin 'mhinz/vim-grepper'

Plugin 'mileszs/ack.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'tpope/vim-surround'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'junegunn/goyo.vim'

Plugin 'w0rp/ale'

Plugin 'godlygeek/tabular'

Plugin 'justinmk/vim-sneak'

Plugin 'osyo-manga/vim-anzu'

Plugin 'danro/rename.vim'

Plugin 'tpope/vim-git'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/vim-diff-enhanced'

Plugin 'python-mode/python-mode'

Plugin 'pangloss/vim-javascript'

Plugin 'hecal3/vim-leader-guide'

Plugin 'fatih/vim-go'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
