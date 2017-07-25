set nocompatible              " Use vim defaults

" Set leader to space
" Note: This line MUST come before any <leader> mappings
nnoremap <SPACE> <Nop>
let mapleader=" "
let maplocalleader = "\\"

" ---------------
" Plugins
" ---------------
call plug#begin('~/.vim/plugged')

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
let g:vim_plug_installing_plugins = 1
for file in split(glob('$HOME/.vim/vim-plugins/*.vim'), '\n')
  exe 'source' fnameescape(file)
endfor
unlet g:vim_plug_installing_plugins

" Add plugins to &runtimepath
call plug#end()

" ---------------
" Color
" ---------------
colorscheme jellybeans
" Force 256 color mode if available
if $TERM =~ "-256color"
  set t_Co=256
endif

syntax on                     " overrules existing colors
filetype plugin indent on

" ---------------
" UI
" ---------------
set nu                        " Show line numbers
set nowrap                    " Line wrapping off
set cmdheight=2               " Make the command area two lines high
set encoding=utf-8
set title                     " Show title in console title bar
set scrolloff=3               " Keep 3 lines when scrolling
set backspace=indent,eol,start

" ---------------
" Cursor line
" ---------------
set cursorline                " highlight the current line
augroup CursorLine            " highlight the current line for the current window
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END
hi LineNr ctermfg=gray

" ---------------
" Text Format
" ---------------
set ts=2                      " Numbers of spaces of tab character
set sw=2                      " Numbers of spaces to (auto)indent
set sts=2                     " Soft tab stop
set shiftround
set nocindent
set expandtab
set showcmd                   " Show incomplete commands
set ruler                     " Show the cursor position all the time
set smartindent               " Smart indent
set autoindent
set et                        " Tabs are converted to spaces, use only when required

" ---------------
" Visual
" ---------------
set showmatch                 " Show matching brackets
set matchtime=2               " How many tenths of a second to blink
set list                      " show white space characters based on listchars
set listchars=""              " Reset the listchars
set listchars=tab:▸▸          " make tabs visible
set listchars+=trail:•        " show trailing spaces as dots
set listchars+=extends:>      " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=precedes:<     " The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=nbsp:¬         " show non-breaking spaces

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*


if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times, idea from
    " http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!

    au FileType cpp,c,java,sh,pl,php set cindent
    au BufRead *.py set cinwords=if,elif,else,for,while,try,except,finally,def,class
    au BufRead *.rb set cinwords=if,elsif,else,unless,for,while,begin,rescue,def,class,module
  augroup END
endif

