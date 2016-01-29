let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Open=1
let Tlist_Auto_Update=1
let Tlist_Display_Tag_Scope=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Enable_Dold_Column=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1
nnoremap <silent> <F8> :TlistToggle<CR>
                                                   
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
                                                   
                                                   
let g:pydiction_location='~/.vim/complete-dict'
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
" 一般设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
  
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
  
" history文件中需要记录的行数
set history=100
  
" 在处理未保存或只读文件的时候，弹出确认
set confirm
  
" 与windows共享剪贴板
set clipboard+=unnamed
  
" 侦测文件类型
filetype on
  
" 载入文件类型插件
filetype plugin on
  
" 为特定文件类型载入相关缩进文件
filetype indent on
  
" 保存全局变量
set viminfo+=!
  
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
  
" 语法高亮
syntax on
 
" 行号
set number
  
" 高亮字符，让其不受100列限制
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '/%101v.*'
  
" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不要备份文件（根据自己需要取舍）
set nobackup
  
" 不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide
  
" 字符间插入的像素行数目
set linespace=0
  
" 增强模式中的命令行自动完成操作
set wildmenu
  
" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
  
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
  
" 允许backspace和光标键跨越行边界
set whichwrap+=,h,l
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch
  
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
  
" 在搜索的时候忽略大小写
set ignorecase
  
" 不要高亮被搜索的句子（phrases）
set nohlsearch
  
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
  
" 不要闪烁
set novisualbell
  
" 总是显示状态行
set laststatus=2
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn
  
" 继承前一行的缩进方式，特别适用于多行注释
set autoindent
  
" 为C程序提供自动缩进
set smartindent
  
" 使用C样式的缩进
"set cindent
  
" 制表符为4统一缩进为4
set tabstop=4
set softtabstop=4
set shiftwidth=4
  
" 用空格代替制表符
set expandtab
  
" 不要换行
set nowrap
  
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile * setfiletype txt
  
" 用空格键来开关折叠
set foldenable
set foldmethod=manual
nnoremap @=((foldclosed(line('.')) < 0) ? 'zc':'zo')
  
" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
" END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-----有关 NERDTree 插件-----
"如果 taglist 窗口是最后一个窗口，则退出 vim
let NERDTree_Exit_OnlyWindow=1
"启动vim自动打开NERDTree
autocmd VimEnter * NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F7 NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

" C++ 
map <F5> :call CompileCpp()<CR>
function CompileCpp()
    set makeprg=g++\ -o\ %<\ %
    silent make
    let myfile=expand("%:r")
    if filereadable(myfile)
        execute "! ./%< && rm ./%<"
    else
        cope5
    endif
endfunction

