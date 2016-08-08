" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" scroll by visual lines
nnoremap <silent> j gj
nnoremap <silent> k gk

" window movement shortcuts
map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" disable search highlights
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" fold with spacebar
nnoremap <space> za
