silent !mkdir -p ~/.vim/autoload ~/.vim/dirs/backups ~/.vim/dirs/undos ~/.vim/dirs/tmp

colorscheme default
set background=dark

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'                                           " vim color scheme plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set directory=~/.vim/dirs/tmp
set backup
set backupdir=~/.vim/dirs/backups
set undofile
set undodir=~/.vim/dirs/undos

set nocompatible            "去除VI一致性
syntax on                   "语法高亮
filetype plugin indent on   "加载vim自带和插件相应的语法和文件类型相关脚本

set number		            "左边行号
set showcmd		            "显示命令
set ruler		            "显示行列数
set backspace=2             "在多数终端修正退格键 Backspace 行为
set autoindent              "自动缩进
set shiftwidth=4            "缩进宽度
set expandtab               "插入的制表符替换为空格, 可通过CTRL-V<Tab>插入真正的Tab
set tabstop=4               "制表符宽度
set nowrap                  "不对文本行进行折叠
set autowrite               "自动保存
set autoread                "自动读取变化
set hls                     "搜索关键词高亮
set wildmenu                "启用增强的Tap补全
set wildmode=list:longest,full  "补全允许的最长字符串
set fileencoding=utf-8      "文件在内存中, 及保存时编码
set fileencodings=utf-8,ucs-bom,gb2312,gbk  "打开文件,文件的编码猜测序列


let mapleader=";"   "定义<leader>键

map <leader>w :w<CR>
map <leader>W :wall!<CR>
map <leader>q :quit<CR>
map <leader>Q :qall!<CR>
map <leader>n :wnext<CR>
map <leader>p :wprev<CR>
map <leader>a :args
map <leader>b :buffer 
map <leader>1 :buffer 1<cr>
map <leader>2 :buffer 2<cr>
map <leader>3 :buffer 3<cr>
map <leader>4 :buffer 4<cr>
map <leader>5 :buffer 5<cr>
map <leader>6 :buffer 6<cr>
map <leader>7 :buffer 7<cr>
map <leader>8 :buffer 8<cr>
map <leader>9 :buffer 9<cr>
map <leader>l :buffers<cr>

map \a :!./a.out
map <F9> :w!<ESC>:make<CR>
map <F10> :!./a.out<CR>
map <F5> <F9> <F10>
map <F4> <Esc>:%!python -m json.tool<CR>
