"--- PLUGINS ---"
call plug#begin('~/.config/nvim/plugged')
	Plug 'ctrlpvim/ctrlp.vim'
    Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'lyokha/vim-xkbswitch'
	Plug 'preservim/nerdtree' |
        	\ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-startify'

	" airline
	Plug 'vim-airline/vim-airline' |
		\ Plug 'vim-airline/vim-airline-themes'

	" colorschemes
	Plug 'frankier/neovim-colors-solarized-truecolor-only'
call plug#end()


" PLUGIN SETTINGS
"--- Airline ---"
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

"--- devicons ---"
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

"--- xkbswitch ---"
let g:XkbSwitchEnabled = 1
let g:XkbSwitchIMappings = ['ru']

"--- CtrlP ---"
nmap <c-m> :CtrlPMRU<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"--- fzf ---"
nmap ; :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>r :Tags<CR>

let $FZF_DEFAULT_COMMAND = 'ag --hidden -l -g ""'
let g:fzf_preview_window = ['right:40%', 'ctrl-/']

" PLUGIN MAPPINGS
"--- NERDtree ---"
map <C-n> :NERDTreeToggle<CR>
