set history=1000

" Show the cursor postion
set ruler

" Show incomplete commands
set showcmd

" Shows a menu when using tab completion
set wildmenu

" Keeps extra lines at top of the screen
set scrolloff=5

" Adjusts search settings
set hlsearch
set incsearch
set ignorecase
set smartcase

" Adds line numbers
set number

" Keeps line breaks at the end of words
set lbr

" Adds automatic indentation
set ai
set si

" Ensure syntax highlighting
syntax on

" Helps keep syntax highlighting appropriate
set bg=dark

" map KEY KEYSTROKES
" Example:
map <F2> iJake Chorley<CR>Developer extrodinaire<ESC>
map <leader>w :w!<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" vim-rainbow settings
let g:rainbow_active = 1

" onehalf settings
set t_Co=256
set cursorline
colorscheme onehalfdark
