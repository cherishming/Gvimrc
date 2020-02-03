"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guifont=Courier_New:h12:cANSI,Consolas:h12,Dejavu_Sans_Mono:h12,Liberation_Mono:h14

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorschme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme  molokai "solarized
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set line number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"reset vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>rr :source $VIMRUNTIME\..\_vimrc<cr>
""""""""""""""""""""""""""""""
"buftabline
"""""""""""""""""""""""""""""r
set hidden
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bprev<cr>

""""""""""""""""""""""""""""""
"tagbar
""""""""""""""""""""""""""""""
"autocmd vimenter * TagbarToggle 
"map <silent> <leader>b :TagbarToggle<cr>
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '$VIMRUNTIME\my_plugins\ctags58\ctags.exe'
" let g:tagbar_left = 1
" let g:tagbar_width =20 
" let g:tagbar_autofocus =1 
" let g:tagbar_sort = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tabular
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vmap <c--> :'<,'>Tabularize /--<cr>
"vmap <c-=> :'<,'>Tabularize /=<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"indentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '|'


set nofixendofline 
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
let g:ag_prg="$VIMRUNTIME/my_plugins/ag.vim/ag.exe --column"

set autowriteall
