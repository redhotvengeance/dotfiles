" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" scroll by visual lines
nnoremap <silent> j gj
nnoremap <silent> k gk

" disable search highlights
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" fold with spacebar
nnoremap <space> za

" use tab for indenting
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gV
vnoremap <S-Tab> <gV
