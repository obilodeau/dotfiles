set viminfo='20,\"500	" read/write a .viminfo file, don't store more
			" than 500 lines of registers
set autoindent
set shiftwidth=4
set expandtab

" .tt uses tt2html syntax plugin
autocmd BufNewFile,BufRead *.tt set filetype=tt2html
