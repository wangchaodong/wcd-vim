set showcmd
"set laststatus
set ruler
set background=dark
colorscheme desert
set fileencoding=utf-8
set fileencodings=utf-8,ysc-bom,euc-jp,gb18030,gbk,gb2312,cp936
set encoding=utf-8
let &termencoding=&encoding
set nocompatible
set history=777
set clipboard+=unnamed
filetype on
set iskeyword+=_,$,@,%,#,-
syntax on
set cmdheight=1
set shortmess=atI
set showmatch
set matchtime=5
set ignorecase
set nohlsearch
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set tabstop=2
set wrap
set smarttab
set go=




  filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 Bundle 'scrooloose/nerdtree'
 Bundle 'kien/ctrlp.vim'
 Bundle 'msanders/snipmate.vim'
 Bundle 'mileszs/ack.vim'
 Bundle 'Shougo/neocomplcache.vim'
 Bundle 'Townk/vim-autoclose'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'Lokaltog/vim-powerline'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

 "neocomplache config
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_force_overwrite_completefunc = 1

 "other config
 set nu
 set mouse=a
 let mapleader = ","  
 let g:mapleader = ","  
 map Y "+y  
 map P "+p  ""

 "easymotion
 let g:EasyMotion_leader_key = '<Leader>'

 "powerline config
 set laststatus=2
 set t_Co=256   
 set fillchars+=stl:\ ,stlnc:\




 " F5编译和运行C程序，C++程序,Python程序，shell程序，F9 gdb调试
   
   " <f5> 编译和运行C
   map <f5> :call CompileRunGcc()<cr>
   func! CompileRunGcc()
   exec "w"
   exec "!gcc % -o %<"
   exec "! ./%<"
   endfunc
    
    "< F5> 编译和运行C++
    map <f5> :call CompileRunGpp()<cr>
    func! CompileRunGpp()
    exec "w"
    exec "!g++ % -o %<"
    exec "! ./%<"
    endfunc
      
      " <f5> 运行python程序
      map <f5> :w<cr>:!python %<cr>
       
       " <f5> 运行shell程序
       map <f5> :call CompileRunSH()<cr>
       func! CompileRunSH()
       exec "w"
       exec "!chmod a+x %"
       exec "!./%"
       endfunc
	   
	   "   map <F5> :!javac %&&java %:r <CR>  
        "<f9>  gdb调试
      " map <f9> :call Debug()<cr>
      " func!  Debug()
      " exec "w"
      " exec "!gcc % -o %< -gstabs+"
      " exec "!gdb %<"
      " endfunc
      " </cr></f9></f9></cr></f5></f5></cr></cr></f5></f5></cr></f5></cr></f5></f5>



set showcmd
" real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set smarttab
set autoread
set smartindent
set incsearch
set clipboard=unnamed
let mapleader=","

" quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" quick quit comman
"quit current window
noremap <Leader>e :quit<CR> 
" quit all window
noremap <Leader>E :qa!<CR>

" use Ctrl+<movement> key to move around the windows, instead of using of
" ctrl+w +<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks
vnoremap < <gv  
vnoremap > >gv
