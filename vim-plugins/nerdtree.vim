if exists('g:vim_plug_installing_plugins')
  Plug 'scrooloose/nerdtree'
endif

nmap <silent> <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeHijackNetrw=1
