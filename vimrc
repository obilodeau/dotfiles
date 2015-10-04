" stuff I like
execute pathogen#infect()
syntax on
filetype plugin indent on

set viminfo='20,\"500   " read/write a .viminfo file, don't store more
                        " than 500 lines of registers
set hlsearch            " highlights search result
set nojoinspaces        " don't insert two spaces after a . when joining lines
" solarized colors
set t_Co=16
set background=dark
colorscheme solarized

" typo prevention: W means w
com W w

" have vim jump to the last position when reopening a file
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 1 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" Textile plugin
" http://www.vim.org/scripts/script.php?script_id=2305

" .tt uses tt2html syntax plugin
" http://www.vim.org/scripts/script.php?script_id=830
autocmd BufNewFile,BufRead *.tt set filetype=tt2html

" .md uses markdown syntax plugin
autocmd BufNewFile,BufRead *.md set filetype=markdown

" .ad, .adoc, .asciidoc uses asciidoc syntax plugin
" use vim-addons to manage asciidoc plugin
autocmd BufNewFile,BufRead *.ad set filetype=asciidoc
autocmd BufNewFile,BufRead *.adoc set filetype=asciidoc
autocmd BufNewFile,BufRead *.asciidoc set filetype=asciidoc
autocmd FileType asciidoc setlocal expandtab autoindent shiftwidth=4 tabstop=4 textwidth=78

" .spec: don't expand existing tabs
autocmd BufNewFile,BufRead *.spec set noexpandtab

" perl
autocmd FileType perl setlocal expandtab autoindent shiftwidth=4 tabstop=4

" python 
autocmd FileType python setlocal expandtab autoindent shiftwidth=4 tabstop=4
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_pylint_exec = '/usr/bin/pylint3'

" html/js
autocmd FileType html setlocal expandtab autoindent shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal expandtab autoindent shiftwidth=4 tabstop=4

" yara
autocmd BufNewFile,BufRead *.yar set filetype=yara
autocmd BufNewFile,BufRead *.yara set filetype=yara
autocmd FileType yara setlocal expandtab autoindent shiftwidth=2 tabstop=2

