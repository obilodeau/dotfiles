" stuff I like
syntax on
set viminfo='20,\"500   " read/write a .viminfo file, don't store more
                        " than 500 lines of registers
set hlsearch            " highlights search result
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

" .spec: don't expand existing tabs
autocmd BufNewFile,BufRead *.spec set noexpandtab

" perl
autocmd FileType perl setlocal expandtab autoindent shiftwidth=4 tabstop=4

" python 
autocmd FileType python setlocal expandtab autoindent shiftwidth=4 tabstop=4

