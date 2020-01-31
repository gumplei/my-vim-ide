set nocompatible

"Plugin pathogen
execute pathogen#infect()
syntax on
filetype plugin on

"Indentation
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"Appearance
set cursorline
set wrap
set ruler
set laststatus=2
set t_Co=256


" Theme and Styling 
set background=dark
"
"if (has("termguicolors"))
"   set termguicolors
"endif

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray



"Search
set path+=**
set showmatch
set ignorecase
set smartcase


"Edit
"set spell spelllang=en_us
set noswapfile
set visualbell
set wildmenu
set wildmode=longest:list,full
set autochdir

"Keymap
nmap <F6> :bp<CR>
nmap <F7> :bn<CR>

"NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
map <C-e> :NERDTreeToggle<CR>

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Airline Theme
let g:airline_theme = 'wombat'

"TagBar
nmap <F8> :TagbarToggle<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_php_checker = 1
let g:syntastic_enable_yaml_checker = 1
let g:syntastic_enable_sh_checker = 1
let g:syntastic_enable_javascript_checker = 1

"DevIcons
set encoding=utf-8
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"SuperType
let g:SuperTabDefaultCompletionType = "<c-n>"

"NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1

"Deoplete
let g:deoplete#enable_at_startup = 1
