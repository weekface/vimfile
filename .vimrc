set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/vundle/
call vundle#rc()
source ~/.vim/vundle_rc

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
"set cursorline
set tabstop=4 shiftwidth=4 softtabstop=4
"set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set laststatus=2
set linespace=5
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

" golang 自动补全
inoremap <C-p> <C-x><C-o>

"" 快速查找
noremap <silent> <leader>ff :FufFile!<CR>
noremap <silent> <leader>fa :FufCoverageFile!<CR>
noremap <silent> <leader>fb :FufBuffer!<CR>
noremap <silent> <leader>fd :FufDir!<CR>
noremap <silent> <leader>fm :FufMruFile!<CR>
noremap <silent> <leader>fw :FufFileWithCurrentBufferDir!<CR>
noremap <silent> <leader>fc :FufMruCmd!<CR>

" 文件夹树和tag列表以及画图工具
noremap <silent> <leader>tt :NERDTreeToggle<CR>
noremap <silent> <leader>tl :Tlist<CR>
noremap <silent> <leader>ts :call ToggleSketch()<CR>
noremap <silent>nf :NERDTreeFind<CR>

" sudo apt-get install ack-grep
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
let g:SuperTabDefaultCompletionType = "<c-n>"

" CTRL-P BEGIN
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_max_height = 30
"
" CTRL-P END

nnoremap <silent>gb :Gblame<CR>
nnoremap <silent>nt :BufExplorer<CR>
nnoremap <silent>tt :TagbarToggle<CR>

let g:Powerline_symbols = 'fancy'
