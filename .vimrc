"This is the personal .vimrc file of Kenneth Kinyanjui.
"While much of it is beneficial for general user, I would 
"recommend picking out the parts you want and understnd,
"as I have done from oth notable vim purists
"

set nocompatible	  "Use Vim settings, rather than Vi settings
		 	  "Be IMproved

filetype off  		  "required!


" I user Vundle http://github.com/gmark/vundle as my
" prferred plugin manager.... never got  the hang of 
" vim-pathogen (no offence to pathogen community)
"
:

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'

filetype plugin indent on 	"required!

set backspace=indent,eol,start  "allow backspacing over everything in insert mode

set history=50 			"keep 50 lines of command line history

set ruler			"show the cursor poition all the time

set showcmd			"display incomplete commands

set nu				"show line numbers

set  tabstop=4			"insert 4 spaces whenever the tab key is pressed

set shiftwidth=4		"set indentation to 4 spaces

set autoindent			"start new line at the same indentation level

syntax enable			"syntx highlighting

set cmdheight=1			"The commandbar height

set showmatch			"Show matching brackets when the texindicator is over them

set nobackup			" do not keep backup files, it's 70's style cluttering

set noswapfile			" do not write annoying intermediate swap files,
				" who did ever restore swap files
				" anyway?
				" https://github.com/nvie/vimrc/blob/master/vimrc#L141


" Vim airline config

set laststatus=2 		"Solves: statusline does not appear until I create a split

set noshowmode			"Get rid of the default mode indicator 

let g:airline_powerline_fonts=1 	"Use powerline symbols

set t_Co=256 			"Force Vim into 246 color mode, to display airline colors

"End of airline configs


set ttimeoutlen=50 		"Soves: there is a pause when leaving insert mode

" highlight characters past column 80
augroup vimrc_autocmds
	autocmd!
	autocmd FileType python hightlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%80v.*/
	autocmd FileType python set nowrap
augroup END

set splitbelow 			"Horizontal splits open blow current file

set splitright			"Vertical splits open to the right of the current line

set wildmode=longest,list	"Pressing <Tab> shows command suggestions similar to pressing <Tab>
							"in bash


"Mappings to traverse buffer list
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>


"Easy exapnsion of the active file directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Shortcut to Mute Highlighting
nnoremap <silent> <C-1> :<C-u>nohlsearch<CR><C-1>

