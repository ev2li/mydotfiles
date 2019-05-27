" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
"彩虹括号
Plugin 'luochen1990/rainbow'
"auto-pair
Plugin 'jiangmiao/auto-pairs'
Plugin 'https://github.com/Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'https://github.com/honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'
" 你的所有插件需要在下面这行之前
call vundle#end()

