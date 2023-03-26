" Trying to make a macro, wich switch to EN layout on enter to normal mode.
"#function SetUsLayout()
"#  !setxkbmap us,ru
"#endfunction
"
"#autocmd InsertLeave * call SetUsLayout()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
