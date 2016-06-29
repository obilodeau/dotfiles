"
" PLUGINS
"
call plug#begin('~/.vim/plugged')

" File tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Syntax highlighting
Plug 'scrooloose/syntastic'
" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" magic ctrl-P
Plug 'ctrlpvim/ctrlp.vim'
" class outline viewer
Plug 'majutsushi/tagbar'
" buffer bar
Plug 'bling/vim-bufferline'
" solarized theme
Plug 'altercation/vim-colors-solarized'

" auto-completion
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

" Add plugins to &runtimepath
call plug#end()

"
" CONFIG
"
set background=dark
colorscheme solarized
syntax on

"
" BINDINGS
"


" Ctrl-s for saving
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>

" Ctrl-w to close a tab
"noremap <C-w> :BD<CR> "

" use the system clipboard
set clipboard=unnamed

cnoremap <C-a>  <Home>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>
nmap \q :nohlsearch<CR>

"
" PLUGIN CONFIG
"

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

" NERDTree
nmap <F5> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 2

" Tagbar
nmap <F8> :TagbarToggle<CR>
" AsciiDoc support
let g:tagbar_type_asciidoc = {
    \ 'ctagstype' : 'asciidoc',
    \ 'kinds' : [
        \ 'h:table of contents',
        \ 'a:anchors:1',
        \ 't:titles:1',
        \ 'n:includes:1',
        \ 'i:images:1',
        \ 'I:inline images:1'
    \ ],
    \ 'sort' : 0
\ }
