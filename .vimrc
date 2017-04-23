colorscheme dracula

" take off the training wheels
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" font
set guifont=Menlo\ Regular:h13

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pep8']

" enable JSX highlighting in JS files
let g:jsx_ext_required = 0

" Rust
autocmd FileType rust let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']

execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>

" Remove trailing whitespace when saving.
autocmd FileType python autocmd BufWritePre %s/\s\+$//

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
