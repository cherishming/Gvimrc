source $VIMRUNTIME/vimrcs/basic.vim
source $VIMRUNTIME/vimrcs/filetypes.vim
source $VIMRUNTIME/vimrcs/plugins_config.vim
source $VIMRUNTIME/vimrcs/extended.vim
source $VIMRUNTIME/vimrcs/my_configs.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('$VIMRUNTIME/my_plugins')
"Declare the list of plugins
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neocomplete.vim'
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'rking/ag.vim'
Plug 'tacahiroy/ctrlp-funky'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set guifont=Courier_New:h12:cANSI,Consolas:h12,Dejavu_Sans_Mono:h12,Liberation_Mono:h14

" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

