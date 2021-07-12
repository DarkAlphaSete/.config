"
" vim-plug
"
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'rust-lang/rust.vim'

Plug 'raimondi/delimitMate'
Plug 'preservim/tagbar'

"Plug 'junegunn/goyo.vim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'chriskempson/base16-vim'

call plug#end()


"
" vim
"

colorscheme base16-default-dark
let base16colorspace=256
set t_Co=16


" Just to be sure. Thanks StackOverflow!
if !exists("g:syntax_on")
    syntax enable
endif

filetype plugin on

" Necessary because kitty does not support 'background color erase' (@ FAQ)
let &t_ut=''
set guioptions='' " To make sure everything stays the same should I ever use gvim instead
set mouse=a
set belloff=all

set encoding=utf-8
set fileencoding=utf-8

set updatetime=2000
set ttimeoutlen=50 " timeoutlen => mappings; ttimeoutlen => key codes

set number
set numberwidth=4
set scrolloff=4
set splitbelow

set hlsearch
set incsearch

set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4


"
" mappings
"
imap <C-Return> <CR><CR><C-o>k<Tab>


nmap <Leader>d :YcmDiags<Return>

nmap <F3> :Lex<Return>
nmap <F8> :TagbarToggle<Return>
nmap <F11> :Goyo<Return>


autocmd TerminalOpen * setlocal nonumber

" While just ':make run' does work, it removes all colours from cargo's output
" ':!<cmd>' and ':terminal <cmd>' (':Crun') keeps them, however.
autocmd BufNewFile,BufRead *.rs,Cargo.toml,Cargo.lock nmap <F5> :Crun<Return>




"
" plugins
"

" netrw
let g:netrw_banner=0
let g:netrw_winsize=10
let g:netrw_liststyle=3
let g:netrw_fastbrowse=2
let g:netrw_special_syntax=1


" rust
let g:rustfmt_autosave=1


" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'


" YouCompleteMe 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_key_detailed_diagnostics=''


" vim-gitgutter
highlight SignColumn guibg=NONE ctermbg=NONE


" delimitMate
let delimitMate_expand_cr=1
let delimitMate_balance_matchpairs=1
