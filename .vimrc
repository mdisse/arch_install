" relative line numbering
set relativenumber
" per default show line numbering
set nu
" create no swapfile
set noswf
" auto syntax highlighting
syntax on
" interactive search - highlights when searching
set is
" ignore case in search pattern
set ic
" use control + l to correct last misspelled word before the coursor
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
" autocomplete for most languages
filetype plugin on
set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')
"
" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" latex
Plug 'lervag/vimtex'
" status line for seeing better the current vim mode
Plug 'itchyny/lightline.vim'
" python autocomplete
Plug 'davidhalter/jedi-vim'
" html autoclose tag 
Plug 'alvan/vim-closetag'
" good old nerdtree
Plug 'scrooloose/nerdtree'
" language correction
"Plug 'dpelle/vim-LanguageTool'
"Plug 'rhysd/vim-grammarous'
call plug#end()

map <C-o> :NERDTreeToggle<CR>
set laststatus=2
let g:tex_flavor = 'latex'
let g:vimtex_view_method ='zathura'
"let g:languagetool_jar='/usr/share/java/languagetool/languagetool-commandline.jar'

"Grammarous config
"nmap <F2> <Plug>(grammarous-move-to-next-error)
"nmap <F3> <Plug>(grammarous-fixit)
"nmap <F5> <Plug>(grammarous-remove-error)
"nmap <F6> <Plug>(grammarous-disable-rule)
"let g:grammarous#disabled_rules = {
"            \ '*' : ['WORD_CONTAINS_UNDERSCORE']}
