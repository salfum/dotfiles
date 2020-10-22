"--- Plugins ---"
call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-surround'
	Plug 'lyokha/vim-xkbswitch'
	Plug 'preservim/nerdtree' |
        	\ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'

	" airline
	Plug 'vim-airline/vim-airline' |
		\ Plug 'vim-airline/vim-airline-themes'

	" colorschemes
	Plug 'frankier/neovim-colors-solarized-truecolor-only'
call plug#end()

"--- General settings ---"
" theme
set termguicolors
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

"--- Airline settings ---"
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" editor
syntax enable 			" Syntax highlight
set nocompatible              	" be iMproved, required
let mapleader = ','		" Make ',' as default leader 
set guifont=Fira\ Code:h12
set backspace=indent,eol,start 	" Make backspace behave like every other editor.
set number			" Set line numbers

"--- Auto-Commands ---"
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.config/nvim/init.vim source %	" Automatically source the .vimrc file on save
augroup END

"--- Search ---"
set hlsearch		" Enable search highlight
set incsearch		" Enable incremental search

"--- Mappings ---"
nmap <Leader>ev :tabedit $MYVIMRC<cr>	" Make it easy to edit the .vimrc file
nmap <Leader><space> :nohlsearch<cr>	" Add simple highlight removal

"--- Plugin Mappings ---"
map <C-n> :NERDTreeToggle<CR>

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

"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
