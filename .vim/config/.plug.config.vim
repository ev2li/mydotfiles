"rainbow 配置
let g:rainbow_active = 1 " 彩虹括号, 0代表关闭

" YouCompleteMe
set runtimepath+=~/.vim/autoload/YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
let g:syntastic_ignore_files=[".*\.py$"] "禁用syntastic来对python检查
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1 "注释中用补全
let g:ycm_confirm_extra_conf = 0 "不检测extra_conf文件
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键, 没有这个会拦截掉tab, 导致其他插件的tab不>能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
let g:ycm_use_ultisnips_completer = 1
"vim-powerline
set guifont=Source\ Code\ Pro\ for\ Powerline:h15
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'
set encoding=utf8

" ale-setting {{{ 
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

let g:UltiSnipsExpandTrigger="<Tab>"
