call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'tpope/vim-sensible'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py -all' }
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

set number

syntax on
colorscheme industry

nmap <leader>t :set tabstop=4 shiftwidth=4 softtabstop=4<CR>
nmap <leader>m :set tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap <leader>S :setlocal spell spelllang=en_gb<CR>
nmap <leader>s :setlocal nospell<CR>

set softtabstop=4
set tabstop=4
set shiftwidth=4
" set expandtab

" autosave on with \A off with \a
nmap <leader>A :autocmd CursorHold,CursorHoldI * update<CR>
nmap <leader>a :autocmd! CursorHold,CursorHoldI *<CR>

" is will map you control-up and control-down to the movements commands. Will make mistyping "gg" impossible and is perfectly coherent with control-right and control-left to move around long lines.
nnoremap <C-Up> g<Up>
nnoremap <C-Down> g<Down>
inoremap <C-Up> <C-\><C-O>g<Up>
inoremap <C-Up> <C-\><C-O>g<Up>
vnoremap <C-Down> <C-\><C-O>g<Down>
vnoremap <C-Down> <C-\><C-O>g<Down>

" control left and control right to front and back of current line
inoremap <C-Right> <C-\><C-O>g$
inoremap <C-Left> <C-\><C-O>^
vnoremap <C-Right> <C-\><C-O>g$
vnoremap <C-Left> <C-\><C-O>^

" nano like save and exit
inoremap <C-o> <C-\><C-O>:w<CR>
inoremap <C-x> <C-\><C-O>:q<CR>

" nano like copy and paste
inoremap <C-k> <C-\><C-O>dd
inoremap <C-u> <C-\><C-O>p
inoremap <C-z> <C-\><C-O>u

" http://stackoverflow.com/questions/11464088/how-do-i-start-vim-in-insert-mode
" Start in insert mode
au BufRead,BufNewFile * start

" http://stackoverflow.com/questions/4484183/save-file-as-root-after-editing-as-non-root
" write as root
cmap w!! w !sudo tee % > /dev/null

" You complete me options
" This option is NOT used for semantic completion.
" Setting this option to a high number like 99 effectively turns off the
" identifier completion engine and just leaves the semantic engine.
let g:ycm_min_num_of_chars_for_completion = 3



