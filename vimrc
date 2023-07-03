colorscheme default
set background=dark

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
"set nowrap                  "不对文本行进行折叠
set autowrite               "自动保存
set autoread                "自动读取变化
set hls                     "搜索关键词高亮
set wildmenu                "启用增强的Tap补全
set wildmode=list:longest,full  "补全允许的最长字符串
set fileencoding=utf-8      "文件在内存中, 及保存时编码
set fileencodings=utf-8,ucs-bom,gb2312,gbk  "打开文件,文件的编码猜测序列


let mapleader=";"   "定义<leader>键



" --------------------------  plug.vim ----------------------------------

   call plug#begin('~/.vim/plugged')

   " Make sure you use single quotes

   " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
   "Plug 'junegunn/vim-easy-align'

   " Any valid git URL is allowed
   "Plug 'https://github.com/junegunn/vim-github-dashboard.git'

   " Multiple Plug commands can be written in a single line using | separators
   "Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

   " On-demand loading
   Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
   "Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

   " Using a non-default branch
   "Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

   " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
   "Plug 'fatih/vim-go', { 'tag': '*' }

   " Plugin options
   "Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

   " Plugin outside ~/.vim/plugged with post-update hook
   "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

   " Unmanaged plugin (manually installed and updated)
   "Plug '~/my-prototype-plugin'

   " [a, ]a, 遍历快捷键插件
   Plug 'http://github.com/tpope/vim-unimpaired'

   Plug 'http://github.com/vim-airline/vim-airline'
   " Initialize plugin system
   call plug#end()

" Then reload .vimrc and :PlugInstall to install plugins.
"| Option                  | Description                                      |
"| ----------------------- | ------------------------------------------------ |
"| `branch`/`tag`/`commit` | Branch/tag/commit of the repository to use       |
"| `rtp`                   | Subdirectory that contains Vim plugin            |
"| `dir`                   | Custom directory for the plugin                  |
"| `as`                    | Use different name for the plugin                |
"| `do`                    | Post-update hook (string or funcref)             |
"| `on`                    | On-demand loading: Commands or `<Plug>`-mappings |
"| `for`                   | On-demand loading: File types                    |
"| `frozen`                | Do not update unless explicitly specified        |
"
" More information: https://github.com/junegunn/vim-plug
"

" --------------------- end plug.vim -----------------------------------

" NERDTree 插件配置
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowBookmarks = 1 " 启动NERDTree时显示书签

" 当NERDTree窗口是最后一个窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
  \ b:NERDTree.isTabTree()) | q | endif
" -------------------------------------------------------------------



" 快捷键
inoremap <c-s> <ESC>:w!<CR>a
noremap <c-s> <ESC>:w!<CR>
map <leader>W :wall!<CR>

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

" 使用<Ctrl>+hjkl快速在窗口间跳转
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
" 使用 Ctrl + w,q 退出窗口(:close)
" 使用 Ctrl + w,o 仅保留当前窗口(:only)
map <leader>Q :qall!<CR>

" 使用 :bd 命令删除当前缓冲区，并关闭当前窗口
" 使用 :Bd 来关闭当前缓冲区，而保留分割窗口
command! Bd :bp | :sp | :bn | :bd





map <F9> :w!<ESC>:make<CR>
map <F10> :!./a.out<CR>
map <F5> <F9> <F10>
map <F4> <Esc>:%!python -m json.tool<CR>
