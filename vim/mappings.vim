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

" split horizontally with h
nnoremap <C-w>h <C-w>s 

" fly between buffers:
" http://of-vim-and-vigor.blogspot.ro/p/vim-vigor-comic.html
nnoremap <leader>l :ls<CR>:b<space>

" prepend leader to copy to null register
" http://unix.stackexchange.com/a/88755
nnoremap <leader>c "_c
nnoremap <leader>d "_d

" quick close buffer
cmap qq bd

" fix C-h navigation bug in neovim
" https://github.com/christoomey/vim-tmux-navigator/issues/71#issuecomment-202422963
if has('nvim')
    nmap <BS> :<C-u>TmuxNavigateLeft<CR>
else
    nmap <C-h> <C-w>h
endif
