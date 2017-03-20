execute pathogen#infect()
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'corntrace/bufexplorer'
Plug 'mileszs/ack.vim'
Plug 'fatih/vim-go'
Plug 'fatih/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end() 

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for ruby
set noswapfile
set autoindent
set hlsearch
set incsearch
set number
set expandtab
set ruler
set nobackup
set showcmd
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set laststatus=2
set linespace=5
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set termencoding=utf-8

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"

colorscheme molokai

noremap <silent> <leader>tt :NERDTreeToggle<CR>
noremap <silent> <leader>tl :Tlist<CR>
noremap <silent> <leader>ts :call ToggleSketch()<CR>
noremap <silent>nf :NERDTreeFind<CR>

nnoremap <silent>gb :Gblame<CR>
nnoremap <silent>nt :BufExplorer<CR>
nnoremap <silent>tt :TagbarToggle<CR>
