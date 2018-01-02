call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
call plug#end()

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

" Cmd completion
set wildmenu

" Show matching braces
set showmatch

" Searching
set incsearch
set hlsearch
" nnoremap <leader><space> :nohlsearch<CR>

nmap <C-n> :Files<CR>
nmap <C-m> :Ag<CR>

" enable JSX highlighting in JS files
let g:jsx_ext_required = 0

map <C-/> :NERDTreeToggle<CR>

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
" Colours
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Get fzf to follow my colour scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
