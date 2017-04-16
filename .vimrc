" ------------Vundle Config---------------
set nocompatible              "不兼容vi，Vundle必须配置
filetype off                  " required,关闭filetype检测

" 设置Vundle运行时路径、初始化
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" plugins
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/majutsushi/tagbar'
Plugin 'Lokaltog/vim-powerline'
Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'https://github.com/rking/ag.vim'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'fatih/vim-go'
Plugin 'https://github.com/pbrisbin/vim-mkdir'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = ","
nmap <c-e> :vsplit $MYVIMRC<cr>
nmap <c-r> :source $MYVIMRC<cr>
nmap <leader>gd :YcmCompleter GoTo<CR>
nmap <leader>i :GoImports<CR>




" ------------Molokai主题---------------
let g:molokai_original = 1
let g:rehash256 = 1
syntax on
" Javascript syntax hightlight
syntax enable
" Set syntax highlighting for specific file types
autocmd BufRead,BufNewFile Appraisals set filetype=ruby
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd Syntax javascript set syntax=jquery

"colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0



" ------------空格和tab设置---------------
set tabstop=4
set expandtab
set autoindent
"set softtabstop=0
"set shiftwidth=4


" ------------ruler和高亮标识---------------
" Show the cursor position all the time
set ruler
"在一行的80个字符处显示高亮
"set textwidth=80
"set colorcolumn=+1
" Highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
"set cursorline cursorcolumn
set cursorline




"-------------设置文件encoding模式-------------
set fileencodings=utf-8,bg18030,gbk,big5



"-------------行号设置-------------
set number
set rnu
set numberwidth=6


"-------------tagBar相关--------------
" 需要依赖ctags，确保系统安装了ctags.
let g:tagbar_width= 35
"let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" tagbar support markdown
let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
        \ 'h:Heading_L1',
        \ 'i:Heading_L2',
        \ 'k:Heading_L3'
    \ ]
\ }



"-------------powerLine statusBar相关--------------
set laststatus=2 " Always display the status line
"set statusline+=%{fugitive#statusline()} "  Git Hotness


"-------------NERD tree--------------
let NERDChristmasTree=0
let NERDTreeWinSize= 35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F2> :NERDTreeToggle<cr>
" 符号定制
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"-------------search相关--------------
" 即时查找
set incsearch
" 忽略大小写
set ignorecase
" 高亮查找
set hlsearch


"-------------crontab相关--------------
" 在mac下支持crontab -e
autocmd filetype crontab setlocal nobackup nowritebackup


"-------------鼠标相关--------------
"在vim中支持鼠标
"set mouse=a


" ------------tag相关----------------
" 在新的窗口打开tag，使用ctrl + \
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" 自动向前寻找tag
set tags+=./../tags,./../../tags,./../../../tags

" ------------shell相关----------------
" 使用ctrl + n 打开zsh，如果更换了shell需要修改
map <C-n> :!zsh<CR>


" ------------折叠相关----------------
"set foldmethod=indent

" ------------默认处于paste模式----------------
"set paste


"------------vim使用系统剪切板----------------
set clipboard=unnamed


"-------------youcompleteme配置------------------
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ycm_goto_buffer_command = 'vertical-split'


"------------ctrlp配置---------------------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor
    "     " Use ag in CtrlP for listing files.
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " Ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif


"------------代码搜索ag-----------------
"从工程根目录搜素
let g:ag_working_path_mode="r"

"-----------javacomplete2---------------
autocmd FileType java setlocal omnifunc=javacomplete#Complete
"trying to guess import option
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

