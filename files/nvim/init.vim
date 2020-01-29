call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()

set number relativenumber

"Filetype indentations
filetype indent plugin on
autocmd FileType python setlocal shiftwidth=8 tabstop=8
autocmd FileType rust setlocal shiftwidth=4 tabstop=4 expandtab

func! WordProcessor()
	" movement changes
	map j gj
	map k gk
	" formatting text
	setlocal formatoptions=1
	setlocal noexpandtab
	setlocal wrap
	setlocal linebreak
	" spelling and thesaurus
	setlocal spell spelllang=en_gb
	" set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
	" complete+=s makes autocompletion search the thesaurus
	" set complete+=s
endfu
com! WP call WordProcessor()
