set relativenumber
set nu 
syntax on
set background=dark
hi Normal guibg=NONE ctermbg=NONE
setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
call plug#end()

map <C-o> :NERDTreeToggle<CR>
set laststatus=2
let g:pymode_python = 'python3'
let g:pymode_warnings = 0
let g:pymode_options_max_line_length = 250
let g:tex_flavor = 'latex' 
let g:vimtex_view_method ='zathura'
