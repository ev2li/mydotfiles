for f in split(glob('$HOME/.vim/config/.*.vim'), '\n')
  exe 'source' f
endfor
