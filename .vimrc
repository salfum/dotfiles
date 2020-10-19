"--- Plugins ---"
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'lyokha/vim-xkbswitch'

	" colorschemes
	Plugin 'frankier/neovim-colors-solarized-truecolor-only'

	call vundle#end()       
	filetype plugin indent on

"--- General settings ---"
" theme
set termguicolors
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

" editor
syntax enable 			" Syntax highlight
set nocompatible              	" be iMproved, required
filetype off                  	" required
let mapleader = ','		" Make ',' as default leader 

set backspace=indent,eol,start 	" Make backspace behave like every other editor.
set number			" Set line numbers

"--- Auto-Commands ---"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %	" Automatically source the .vimrc file on save
augroup END

"--- Search ---"
set hlsearch		" Enable search highlight
set incsearch		" Enable incremental search

"--- Mappings ---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>	" Make it easy to edit the .vimrc file
nmap <Leader><space> :nohlsearch<cr>	" Add simple highlight removal

inoremap kj <ESC>
inoremap ло <ESC>

map <Space> <Leader>
nmap <Leader>w :w!<CR>
map ж ;

nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d
