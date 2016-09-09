" Autoload vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Install python support for neovim
silent !pip list | grep 'neovim'
if v:shell_error == 1
  silent !pip install neovim
endif

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'mileszs/ack.vim'

" Python
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'

" JavaScript
Plug 'kchmck/vim-coffee-script'

" HTML
Plug 'digitaltoad/vim-pug'

call plug#end()

"
" Plugin settings
"

" NERDTree
let NERDTreeShowHidden=1 " show hidden files in NERDTree
let NERDTreeIgnore=['.DS_Store', '\.pyc$', '\~$'] " ignore some files
" allow tmux pane switching from NERDTree
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'
" Toggle NERDTree
nmap <silent> <leader>n :NERDTreeFocus<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>m :NERDTreeClose<cr>

" CtrlP
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$'
  \ }

" vim-gitgutter
let g:gitgutter_sign_column_always = 1

" ack
" let's use ag
let g:ackprg = 'ag --vimgrep'
