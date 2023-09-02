call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'terryma/vim-multiple-cursors'
    Plug 'kana/vim-surround'
call plug#end()

" Airline theme settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1

"NERDTree Settings
nnoremap <C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" Fzf Settings
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>

" Common Settings
set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
set ai
set sw=4
set tabstop=4
set noswapfile

set hlsearch
set incsearch
set ignorecase
set spell
set splitbelow
set cursorline
set nobackup
set expandtab
set foldmethod=indent

au bufRead * normal zR

nmap <F6> :bp<CR>
nmap <F7> :bn<CR>
