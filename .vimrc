colorscheme badwolf

" font
set guifont=Menlo\ Regular:h13

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
set wildmenu
set lazyredraw
set showmatch

" Searching
set incsearch
set hlsearch
" nnoremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable
set foldlevelstart=99
nnoremap <space> za
set foldmethod=indent

" Leader
let mapleader=","

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

" Rust
autocmd FileType rust let g:syntastic_rust_checkers = ['rustc']
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']

execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>

" Esc
imap jj <Esc>

" Remove trailing whitespace when saving.
autocmd FileType python autocmd BufWritePre %s/\s\+$//

" Remove scrollbars
set guioptions= 
