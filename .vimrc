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

set autoindent
set hlsearch
set incsearch
set number
set expandtab
set ruler
set nobackup
set showcmd
"set cursorline
set tabstop=2 shiftwidth=2 softtabstop=2
set list
set listchars=tab:,.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set laststatus=2
"set linespace=0 " No extra spaces between rows"
set wildmenu " show list instead of just completing
set wildmode=list:longest,full " command <Tab> completion, list matches, then longest common part, then all.

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 " 如果你要打开的文件编码不在此列，那就添加进去
set termencoding=utf-8

" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim

""augroup myfiletypes
""" Clear old autocmds in group
""autocmd!
""" autoindent with two spaces, always expand tabs
"autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
""augroup END
""noremap <silent> <F11> :cal VimCommanderToggle()<CR>

" specky是一个为rspec测试提供方便的工具
let g:speckyBannerKey = "<leader>rb"
let g:speckyQuoteSwitcherKey = "<leader>r'"
let g:speckyRunRdocKey = "<leader>rd"
let g:speckySpecSwitcherKey = "<leader>rx"
let g:speckyRunSpecKey = "<leader>rs"
"let g:speckyRunSpecCmd = "spec -fs -r loadpath.rb"
let g:speckyRunSpecCmd = "spec -fs -c"
let g:speckyRunRdocCmd = "fri -L -f plain"
let g:speckyWindowType = 1

"" viki 用wiki的格式来记录信息的工具
"let g:vikiNameSuffix=".viki"
"let g:vikiUseParentSuffix = 1
"autocmd! BufRead,BufNewFile *.viki set filetype=viki

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
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" CTRL-P BEGIN
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_max_height = 30
"
" CTRL-P END

" Tabularize {
"if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=><CR>
    vmap <Leader>a= :Tabularize /=><CR>
"endif
" }

" Fugitive {
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent>gb :Gblame<CR>
nnoremap <silent>nt :BufExplorer<CR>
nnoremap <silent>tt :TagbarToggle<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
" }

"" 使用空格翻页
"" nnoremap <silent> <space> <C-F>
"
"" 当处于wrap模式时，让通常的操作键作用于视觉上的行
"" 只有在set wrap? == 'nowrap' 的情况下才适用
""nnoremap <silent> j gj
""nnoremap <silent> k gk
""nnoremap <silent> 0 g0
""nnoremap <silent> $ g$
""nnoremap <silent> ^ g^
"
"augroup mkd
"  autocmd BufRead *.mkd,*.markdown set ai formatoptions=tcroqn2 comments=n:>
"augroup END

" 自己添加的运行ruby指令
let g:runRubyKey = "<leader>rr"
let g:toggleRubyCommentKey = "<leader>rc"

let g:Powerline_symbols = 'fancy'

"" txtbrowser
"au BufRead,BufNewFile *.txt setlocal ft=txt
"
"" vimim begin
""
"" 只有在输入完按空格才显示输入法
"" let g:vimim_static_input_style = 2
"" let g:vimim_static_input_style = 0
"
"" 为-1时不调用云输入法
"" let g:vimim_cloud_sogou = -1
"" 5个字符以上查找搜狗
"let g:vimim_cloud_sogou = 5
"
"" 每打多少个词后存盘
"let g:vimim_chinese_frequency = 20
"
"" vimim end
if $COLORTERM == 'gnome-terminal'
    set term=gnome-256color
    colorscheme railscasts
else
    colorscheme default
endif

"" FuzzyFinder
map ,,  :FufCoverageFile!<cr>
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor)'
let g:fuf_enumeratingLimit = 5000
let g:fuf_coveragefile_prompt = '=>'
