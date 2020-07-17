" -------------------------------- General Settings ------------------------------
set t_Co=256
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set number
set cursorline
syntax enable
set number relativenumber
set nu rnu
set nohlsearch

colorscheme monokai
let g:goyo_width = 104

" -------------------------------- Syntax Specific -------------------------------
" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

" -------------------------------- Key Mappings ----------------------------------
" Tab navigation like Firefox.
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-h> <Esc>:tabprvious<CR>i
inoremap <C-l>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Buffer navigation
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

nnoremap <F5> :source ~/.config/nvim/init.vim<CR>
map <C-s> :w<CR>
nnoremap Q <nop>
map <S-f> :EditVifm .<CR>
map <SPACE> :EditVifm %:p:h<CR>
map <ENTER> :Goyo<CR>

nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" -------------------------------- Plugin management -----------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.nvimplugins')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'
" Initialize plugin system
call plug#end()
