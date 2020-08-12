"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"   Roberto Andradas Izquierdo
"   randradas@gmail.com
"
" Inspiration from:
"   https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"   https://github.com/VundleVim/Vundle.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" This file has two parts. The first one (Vundle) is about configuring Vim
" plugins with Vundle. The second one (Settings) is for settings.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  _   _                 _ _
" | | | |               | | |
" | | | |_   _ _ __   __| | | ___
" | | | | | | | '_ \ / _` | |/ _ \
" \ \_/ / |_| | | | | (_| | |  __/
"  \___/ \__,_|_| |_|\__,_|_|\___|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'altercation/vim-colors-solarized'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Pathogen
" execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  _____      _   _   _
" /  ___|    | | | | (_)
" \ `--.  ___| |_| |_ _ _ __   __ _ ___
"  `--. \/ _ \ __| __| | '_ \ / _` / __|
" /\__/ /  __/ |_| |_| | | | | (_| \__ \
" \____/ \___|\__|\__|_|_| |_|\__, |___/
"                              __/ |
"                             |___/
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

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

" Add a bit extra margin to the left
" set foldcolumn=1

" Add number line to the left
" set nu

" Set title
set title

" Always show statusline
set laststatus=2

" Statusline configuration
set statusline=%F                               " Path to the file
set statusline+=%=                              " Switch to the right side
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " Show encoding
set statusline+=-       " Separator
set statusline+=%y      " Filetype of the file
set statusline+=%20c    " Current column
set statusline+=%5l     " Current line
set statusline+=%5L     " Total lines
set statusline+=%5p     " Percentage

" Cursorline
" set cursorline


""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""

" Enable syntax highlighting
filetype plugin indent on
syntax enable

" Theme
set background=dark
set t_Co=256                  " Assume your terminal emulator is 256 colors
colorscheme solarized
hi ColorColumn ctermbg=Black


""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""
set backup
set wb
set swapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


""""""""""""""""""""""""""""""""
" Text, tab and indent
""""""""""""""""""""""""""""""""
"Show tabs, trail, invisible chars
set list
set listchars=tab:▸·,trail:·

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent

" Linebreak, indent and wrap
set tw=80
set colorcolumn=80
set formatoptions=tcq
set lbr
" set nowrap          " Wrap lines

" Behaviour
set backspace=indent,eol,start  " Make backspace works like other apps
