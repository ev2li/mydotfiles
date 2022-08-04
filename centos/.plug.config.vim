""""""""""""""""""""""""""""""
" miniBufexplorer Config
""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2



""""""""""""""""""""""""""""""
" rainbow Config
""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,\|+\|-_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'css': 0,
\   }
\}

""-----------------------------------------------NERDTree插件配置开始----------------------------------------------------------
" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
map <f2> :NERDTreeToggle<cr>
nmap <leader>tn :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""不显示隐藏文件
let g:NERDTreeHidden=0
""------------------------------------------------nerdtree插件配置结束---------------------------------------------------------

""""""""""""""""""""""""""""""
" lightline Config
""""""""""""""""""""""""""""""
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

set tags+=tags
set tags+=~/.vim/tags/libc.tags
set tags+=~/.vim/tags/cpp.tags
set tags+=~/.vim/tags/glib.tags
set tags+=~/.vim/tags/susv2.tags
set tags+=~/.vim/tags/systags
set tags+=~/tags/tags

" OmniCppComplete
set ofu=syntaxcomplete#Complete
set completeopt=menu,menuone
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_NamespaceSearch=1   "打开命名空间
let OmniCpp_ShowPrototypeInAbbr=1  ""打开显示函数原型
let OmniCpp_SelectFirstItem = 2 "自动弹出时自动跳至第一个
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest

""""""""""""""""""""""""""""""
" miniBufexplorer Config
""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s
