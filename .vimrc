set nocompatible              " required
filetype off                  " required
 
set runtimepath^=~/.vim/bundle/ctrlp.vim
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
 
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'w0rp/ale'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 
" Recommended additions from Daniel Miessler dot com
inoremap jk <ESC>
let mapleader = ","
 
set spell spelllang=en_us
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!
 
" Python additions
set encoding=utf-8
let python_highlight_all=1
syntax on
 
" colorscheme xoria256
syntax enable
set background=light
colorscheme solarized
 
set hlsearch
 
" if has('gui_running')
"  set background=dark
"   colorscheme solarized
" else
"   colorscheme zenburn
" endif
" call togglebg#map("<F5>")
if has('win32')
    set guifont=IBM\ Plex\ Mono:h11
else
    set guifont=Source\ Code\ Pro\ for\ Powerline:h16
endif
 
" Additions from Drew Neil vimcasts
" vimcast #1
" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
 
" vimcast #3
if has("autocmd")
  " Enable file type detection
  filetype on
 
  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
 
  " Customisations based on house-style (arbitrary)
  autocmd FileType c setlocal ts=4 sts=4 sw=4 tw=79 ff=unix expandtab autoindent
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType markdown setlocal ts=4 sts=4 sw=4 tw=79 ff=unix expandtab autoindent
  autocmd FileType python setlocal ts=4 sts=4 sw=4 tw=79 ff=unix expandtab autoindent
  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
" vimcast #16 soft-wrapping text
command! -nargs=* Wrap set wrap linebreak nolist
" navigate display lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^
 
" Relative number plus toggle
" https://jeffkreeftmeijer.com/vim-number/
:set number relativenumber
 
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
 
:set ruler
 
" from seejohncode.com
" colorcolumn
set tw=80
set colorcolumn=+1
 
" alternatively
au BufWinEnter * let w:m2=matchadd('Errormsg','\%>80v.\+', -1)
 
" airline status line modifications
let g:airline_detect_spell=0
let g:airline_detect_spelllang=0
let g:airline_theme='light'

