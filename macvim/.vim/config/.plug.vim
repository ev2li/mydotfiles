" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'luochen1990/rainbow'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'Yggdroot/LeaderF'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'junegunn/vim-slash'
Plugin 'https://github.com/honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-fugitive'
Plugin 'regedarek/ZoomWin'
Plugin 'easymotion/vim-easymotion'
Plugin 'liuchengxu/vim-which-key'
Plugin 'voldikss/vim-floaterm'
Plugin 'psliwka/vim-smoothie'
Plugin 'plasticboy/vim-markdown'
"你的所有插件需要在下面这行之前
call vundle#end()

