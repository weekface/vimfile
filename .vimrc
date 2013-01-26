set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/vundle/
call vundle#rc()
source ~/.vim/vundle_rc

" set guifont=Ubuntu\ Mono\ 12

set guifont=Monaco\ 10

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  
" 设置开启语法高亮  
syntax on  
"显示行号  
set number  
" 查找结果高亮度显示  
set hlsearch  
" 不生成swp文件
set noswapfile

" tab宽度  
set tabstop=2  
set cindent shiftwidth=4  
set autoindent shiftwidth=4  
filetype plugin indent on  

" 把 F8 映射到 启动NERDTree插件  
" map <F8> :NERDTree<CR>  
" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了  
" imap <C-S> <C-C>:w<CR>  

function Maximize_Window()
	silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

filetype plugin on

" 修改swapfile路径
set dir=~/.vim/backup/
let g:rsenseHome = "/usr/lib/rsense-0.3"
let g:rsenseUseOmniFunc = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

" Command-T
let g:CommandTMaxFiles=20000
set wildignore+=public,.git 
map <F9> :CommandTFlush<CR>

let g:Powerline_symbols = 'fancy'


colorscheme vividchalk
set showcmd
set wrap
behave mswin
let Tlist_Use_Right_Window=1

" 让nerdtree show hidden files and folders
let NERDTreeShowHidden=1
