" stuff I like
syntax on
set viminfo='20,\"500   " read/write a .viminfo file, don't store more
                        " than 500 lines of registers
set hlsearch            " highlights search result

" have vim jump to the last position when reopening a file
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 1 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" .tt uses tt2html syntax plugin
autocmd BufNewFile,BufRead *.tt set filetype=tt2html

" .spec: don't expand existing tabs
autocmd BufNewFile,BufRead *.spec set noexpandtab

" perl
autocmd FileType perl setlocal expandtab autoindent shiftwidth=4 tabstop=4

" python 
autocmd FileType python setlocal expandtab autoindent shiftwidth=4 tabstop=4
