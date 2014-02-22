"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"   Roberto Andradas Izquierdo
"   randradas@gmail.com
"
" Sections:
"   -> VIM user interface
"   -> Colors and fonts
"   -> Files, backups and undo
"   -> Text, tab and indent
"	
" Attribution:
"   This .vimrc file is mostly based on the amix's .vimrc file.
"   https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"
"   amix _at_ amix.dk
"   http://amix.dk/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

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
set foldcolumn=1

" Add number line to the ledt
set nu

" Always show statusline
set laststatus=2

" Statusline configuration
set statusline=%F       " Path to the file
set statusline+=%=      " Switch to the right side
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " Show encoding
set statusline+=-       " Separator
set statusline+=%y      " Filetype of the file
set statusline+=-       " Separator
set statusline+=%2c      " Current column
set statusline+=/       " Separator
set statusline+=%l      " Current line
set statusline+=/       " Separator
set statusline+=%L      " Total lines
set statusline+=/       " Separator
set statusline+=%p      " Total lines

""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

try
    colorscheme desert
    hi StatusLine ctermbg=red ctermfg=black
catch
endtry

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
	

""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""
set backup
set wb
set swapfile
	

""""""""""""""""""""""""""""""""
" Text, tab and indent
""""""""""""""""""""""""""""""""

" Use tabs instead of spaces
"set noexpandtab
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak
set lbr
set tw=79


set ai " Auto indent
set si " Smart indent
set wrap "Wrap lines
