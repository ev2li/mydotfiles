"keymap.
map qq <Esc>:q!<CR>
map ww <Esc>:w!<CR>
map wq <Esc>:wq!<CR>
map tb  <Esc>:Tagbar <CR>
map ne  <Esc>:NERDTree <CR>

"行/块移动
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
