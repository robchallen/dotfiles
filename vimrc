call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Plug 'artur-shaik/vim-javacomplete2'
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe'
" Plug 'vim-latex/vim-latex'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

map <ESC>[1;5D <C-Left>
map <ESC>[1;5B <C-Down>
map <ESC>[1;5C <C-Right>
map <ESC>[1;5A <C-Up>

map! <ESC>[1;5D <C-Left>
map! <ESC>[1;5B <C-Down>
map! <ESC>[1;5C <C-Right>
map! <ESC>[1;5A <C-Up>

set statusline=%<%f\ %M\ %h%r%=%-10.(%l,%c%V\ %{eclim#project#util#ProjectStatusLine()}%)\ %P
set number

syntax on
colorscheme industry

" nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
" nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
" nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
nmap <leader>t :set tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <leader>m :set tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap <leader>S :setlocal spell spelllang=en_gb<CR>
nmap <leader>s :setlocal nospell<CR>

set softtabstop=4
set tabstop=4
set shiftwidth=4
" set expandtab

autocmd CursorHold,CursorHoldI * update

" is will map you control-up and control-down to the movements commands. Will make mistyping "gg" impossible and is perfectly coherent with control-right and control-left to move around long lines.
nnoremap <C-Up> g<Up>
nnoremap <C-Down> g<Down>
inoremap <C-Up> <C-\><C-O>g<Up>
inoremap <C-Down> <C-\><C-O>g<Down>

" nano like save and exit
inoremap <C-o> <C-\><C-O>:w<CR>
inoremap <C-x> <C-\><C-O>:q<CR>

" nano like copy and paste
inoremap <C-K> <C-\><C-O>dd
inoremap <C-U> <C-\><C-O>p
inoremap <C-Z> <C-\><C-O>u
inoremap <C-Right> <C-\><C-O>g$
inoremap <C-Left> <C-\><C-O>^

" http://stackoverflow.com/questions/11464088/how-do-i-start-vim-in-insert-mode
" Start in insert mode
au BufRead,BufNewFile * start

" http://stackoverflow.com/questions/4484183/save-file-as-root-after-editing-as-non-root
" write as root
cmap w!! w !sudo tee % > /dev/null
