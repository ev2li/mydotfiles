"rainbow 配置
let g:rainbow_active = 1 " 彩虹括号, 0代表关闭

" tch to last buffer"	 ale-setting {{{ 
let g:ale_set_highlights = 0 
"自定义error和warning图标
let g:ale_sign_error = '✗' 
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale 
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E' 
let g:ale_echo_msg_warning_str = 'W' 
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"打开文件时不进行检查
let g:ale_lint_on_enter = 0 

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'go': ['golint'],
\   'php': ['phplint'],
\}
" }}}
"-----------------------------------------------NERDTree插件配置开始----------------------------------------------------------
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

set laststatus=2
let g:lightline = { 
      \ 'colorscheme': 'one',
      \ }
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

" LeaderF
" 文件查找快捷键 crtl p
let g:Lf_ShortcutF = '<C-P>'
" 设置弹出窗口位置浮空
let g:Lf_WindowPosition = 'popup'
" 设置忽略文件
let g:Lf_WildIgnore = {
       \ 'dir': ['.svn','.git','.hg'],
       \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.d','*.o','*.so','*.py[co]']
       \}

let g:Lf_HideHelp = 1
let g:Lf_ShowDevIcons = 0
" 关闭插件默认映射
let g:multi_cursor_use_default_mapping = 0
" mapping
let g:multi_cursor_start_word_key      = '<C-d>'	" 选中一个
let g:multi_cursor_select_all_word_key = '<A-n>'	" 全选匹配的字符
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'	" 回到上一个
let g:multi_cursor_skip_key            = '<C-x>'	" 跳过当前选中, 选中下一个
let g:multi_cursor_quit_key            = '<Esc>'	" 退出

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe  代码自动补全  Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set runtimepath+=~/.vim/bundle/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项

let g:UltiSnipsExpandTrigger="<CR>"
" =============== vim-devicons 配置 ===============
"set encoding=UTF-8 " 已设置
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1


" =============== Tagbar 配置 ===============
nmap <Leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
let g:tagbar_width=30
nnoremap <leader>fd <cmd>call smoothie#do("\<C-D>") <CR>
