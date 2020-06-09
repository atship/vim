syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set ai
set lisp
execute pathogen#infect()

:function RunTmux()
  ":%y+
  :w! /tmp/tmp.ss
  :exe "!tmux send -t right '(load \"/tmp/tmp.ss\")' Enter"
:endfunction

nmap <F5> :call RunTmux() <Enter> <Enter>
