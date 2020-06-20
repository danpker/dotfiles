call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

let g:black_linelength = 79

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'

" remap jj to esc
:imap jj <Esc>

" set leader
let mapleader = ','

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

set guifont=Pragmata\ Pro\ Mono:h20

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

" easy hot keys around comma
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
nmap <leader>k :Files<CR>
nmap <leader>m :Rg<CR>
nmap <leader>l :TagbarToggle<CR>
nmap <leader>. :nohlsearch<CR>
nmap <leader>d :ALEGoToDefinition<CR>
nmap <leader>f :ALEFix<CR>
" enable JSX highlighting in JS files
let g:jsx_ext_required = 0

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

" Backspace
set backspace=indent,eol,start

" Air line
let g:airline_powerline_fonts = 1
" Keep it there all the time
set laststatus=2
let g:airline_theme='wombat'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" VIM ALE
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:ale_python_flake8_executable = $VIRTUAL_ENV . '/bin/flake8'
let g:ale_linters = {
\   'python': ['flake8', 'pyls'],
\   'rust': ['cargo', 'rls'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['remove_trailing_lines', 'trim_whitespace', 'rustfmt'],
\   'elixir': ['remove_trailing_lines', 'trim_whitespace', 'mix_format']
\}
let g:ale_fix_on_save = 1
let g:ale_rust_cargo_use_clippy = 1
let g:ale_rust_cargo_use_check = 1


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

autocmd FileType make setlocal noexpandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> if !exists('g:spf13_keep_trailing_whitespace') | call StripTrailingWhitespace() | endif

function! StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " do the business:
    %s/\s\+$//e
    " clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" syntax highlighting for gl shaders
autocmd! BufNewFile,BufRead *.vs,*.fs,*.glslf,*.glslv set ft=glsl

" auto wrapping for .md
au BufRead,BufNewFile *.md setlocal textwidth=80
" auto spell for markdown
au BufRead,BufNewFile *.md setlocal spell
