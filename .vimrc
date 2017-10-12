colorscheme dracula

" remap jj to esc
:imap jj <Esc>

" take off the training wheels
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" font
if has("gui_macvim")
    " set macvim specific stuff
    set macligatures
endif

set guifont=Fira\ Code:h14

" add ruler
set ruler

" Enable syntax hilighting
syntax enable

" Tabs
set softtabstop=4
set expandtab
set shiftwidth=4

" File Type specific
filetype plugin on

" Line length
set colorcolumn=80

" Visuals
set number
set relativenumber
set showcmd
set cursorline
filetype indent on

" Cmd completion
set wildmenu

" For perf
set lazyredraw

" Show matching braces
set showmatch

" Searching
set incsearch
set hlsearch
" nnoremap <leader><space> :nohlsearch<CR>

" Ctrl P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" enable JSX highlighting in JS files
let g:jsx_ext_required = 0

execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>

" Remove scrollbars
set guioptions= 

" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Better defaults when splitting
set splitbelow
set splitright

" Change cursor shape between insert and normal mode in iTerm2.app
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Backspace
set backspace=indent,eol,start

" Air line
let g:airline_powerline_fonts = 1
" Keep it there all the time
set laststatus=2
let g:airline_theme='dracula'

" VIM ALE
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_python_flake8_executable = $VIRTUAL_ENV . '/bin/flake8'
let g:ale_linters = {
\   'python': ['flake8'],
\}

" Nicer split line
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
