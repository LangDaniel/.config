:let fortran_free_source=1
:syntax on
:set number
:set expandtab
:set hlsearch
:filetype plugin on

autocmd FileType python map <F5> :!clear;python %<CR>
autocmd FileType form map <F5> :!clear;~/form/bin/form %<CR>
autocmd FileType tex    map <F5> :w <CR> :!clear; pdflatex -interaction nonstopmode -halt-on-error -file-line-error %< && bibtex %< <CR>
autocmd FileType tex    map <F6> :w <CR> :!clear; lualatex -interaction nonstopmode -halt-on-error -file-line-error %< && bibtex %< <CR>
autocmd FileType fortran map <F5> :!clear;gfortran -ffree-form % && ./a.out <CR>
autocmd FileType cpp map <F5> :!clear;g++ % && ./a.out <CR>
autocmd FileType gp map <F5> :!clear;gnuplot -persist  %<CR>
autocmd FileType r map <F5> :!clear;Rscript %<CR>
