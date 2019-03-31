set nocompatible

syntax enable
syntax on
set background=dark
colorscheme solarized

set encoding=utf-8
set number

" set fold type
set foldmethod=indent
" set foldmethod=syntax
set foldlevelstart=99
" set foldlevel=3

" pep8 type for python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

set noswapfile

call plug#begin('~/.vim/plugged')

" one colorscheme pack to rule them all! 
Plug 'flazz/vim-colorschemes'


" A tree explorer plugin for vim. 
Plug 'scrooloose/nerdtree' 
"au VimEnter *  NERDTree
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Asynchronous linting/fixing for Vim
" Plug 'w0rp/ale'
" let g:ale_sign_column_always = 1
" let g:ale_set_highlights = 0
" let g:ale_lint_on_enter = 0
" let g:ale_linters = {'c++': ['clang'], 'c': ['clang'], 'python': ['pylint'], }

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
set laststatus=2
set noshowmode

" A code-completion engine for Vim
Plug 'Valloric/YouCompleteMe'

" Provide easy code formatting 
Plug 'Chiel92/vim-autoformat'
let g:formatter_yapf_style='google'

" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box. 
Plug 'python-mode/python-mode', { 'branch': 'develop' }
let g:Pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_indent = 1
let g:pymode_lint_cwindow = 0


" No-BS python code folding for Vim
Plug 'tmhedberg/SimpylFold'

" Better Rainbow Parentheses
Plug 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
                        \ ['brown',       'RoyalBlue3'],
                        \ ['Darkblue',    'SeaGreen3'],
                        \ ['darkgray',    'DarkOrchid3'],
                        \ ['darkgreen',   'firebrick3'],
                        \ ['darkcyan',    'RoyalBlue3'],
                       \ ['darkred',     'SeaGreen3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['brown',       'firebrick3'],
                        \ ['gray',        'RoyalBlue3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['Darkblue',    'firebrick3'],
                        \ ['darkgreen',   'RoyalBlue3'],
                        \ ['darkcyan',    'SeaGreen3'],
                        \ ['darkred',     'DarkOrchid3'],
                        \ ['red',         'firebrick3'],
                        \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" A vim plugin to display the indention levels with thin vertical lines 
Plug 'Yggdroot/indentLine'

" Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'


" Run interactive commands inside a Vim buffer
Plug 'oplatek/Conque-Shell'

call plug#end()



" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" swich esc to <jk>
inoremap jk <esc>
" inoremap <esc> <nop>
nnoremap <space> za

" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
set backspace+=indent,eol,start

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none
