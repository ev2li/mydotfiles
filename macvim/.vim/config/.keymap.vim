"|~              keymap.
map qq <Esc>:q!<CR>
map ww <Esc>:w!<CR>
map wq <Esc>:wq!<CR>
map <leader>zz <Esc><C-z>

"打开tagbar
map tb  <Esc>:Tagbar <CR>
"打开NERDTree
map ne  <Esc>:NERDTree <CR>

"行/块移动
nmap <leader><leader>j mz:m+<cr>`z
nmap <leader><leader>k mz:m-2<cr>`z
vmap <leader><leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader><leader>k :m'<-2<cr>`>my`<mzgv`yo`z

"编辑文件
nmap <Leader>ff <Esc>:e 

"执行vim命令
map <space><space>x <ESC>:

"前后buffer
map <leader>n :bnext<cr>
map <leader>p :bprevious<cr>
"列出所有buffer
nmap <leader>ls <Esc>:ls<CR>
"Ycm跳转到声明或定义
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" 重新加载vimrc文件
nnoremap <leader>s :source $MYVIMRC<cr>

" 安装、更新、删除插件
nnoremap <leader><leader>i :PluginInstall<cr>
nnoremap <leader><leader>u :PluginUpdate<cr>
nnoremap <leader><leader>c :PluginClean<cr>
nnoremap <leader><leader>l :PluginList<cr>

"最大化buffer
nmap <leader>wo <C-W>o
"编辑vim的配置文件
nmap <leader>fep :e ~/.vim/config/.plug.vim<CR>
nmap <leader>fec :e ~/.vim/config/.plug.config.vim<CR>
nmap <leader>feb :e ~/.vim/config/.base.vim<CR>
nmap <leader>fek :e ~/.vim/config/.keymap.vim<CR>
nmap <leader>fed :e ~/.vimrc<CR>
"whichkey
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
"Floaterm
nmap <leader>flo :FloatermToggle<CR>
"kill current buffer
nmap <leader>bd :bunload<CR>

nnoremap <silent> <Leader>ga :Git add %:p<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gc :Git commit<CR>
nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gf :Gfetch<CR>
nnoremap <silent> <Leader>gs :Git<CR>
nnoremap <silent> <Leader>gp :Gpush<CR>

" leaderF快捷键
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>rg :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>

nnoremap <Leader><TAB> <C-O><CR>
nnoremap <leader>ws :<C-u>sp<CR>
nnoremap <leader>wv :<C-u>vs<CR>
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L
nnoremap <leader>wx <C-w>x
nnoremap <leader>wc <C-w>c
nnoremap <leader>wo <C-w>o
nnoremap <leader>wR <C-w>R
nnoremap <leader>fd <cmd>call smoothie#do("\<C-D>") <CR>
nnoremap <leader>mt :MarkdownPreviewToggle<CR>
