set nocompatible
filetype plugin on
syntax on

"encoding
set encoding=utf-8
set fileencoding=utf-8

set guifont=Consolas:h15

"disable beeping
set belloff=all
set mouse=a
set clipboard=unnamed
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab "таб = 4 пробела
set autoindent
set smartindent
set number relativenumber
set nowrap "отключить перенос строк
set ignorecase
set smartcase
set noswapfile
set nobackup
set hlsearch
set incsearch
set cursorline "подсветка строки на которй стоит курсор
"set cursorcolumn
set guioptions=

set t_Co=256
set colorcolumn=80
set laststatus=2

"Fix splitting
set splitbelow splitright
" display indentation guides
"set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

"======================="
"       PLUGINS         "
"======================="
call plug#begin('~/.vim/plugged')

" NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

" Alt motion
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'

"Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

Plug 'mattn/emmet-vim'

"Status Bar
Plug 'itchyny/lightline.vim'

"Themes
Plug 'gko/vim-coloresque'
Plug 'morhetz/gruvbox'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '/mnt/w/Dropbox/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
call plug#end()

"themes
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'

"NERDTree
set autochdir

"======================="
"       HOTKEYS         "
"======================="
let g:mapleader=" "
nnoremap <SPACE> <Nop> " отключение пробела в нормал моде

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

"shortcut split opening
nnoremap <leader>H :split<space>
nnoremap <leader>V :vsplit<space>

nnoremap <C-h> :nohlsearch<CR>
nnoremap <C-s> :w<CR>
inoremap jj <ESC>

"----- easy-motion -----"
map <Leader> <Plug>(easymotion-prefix)

"------- Emmet -------"
"let g:user_emmet_expandabbr_key='<Tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_leader_key=','
let g:user_emmet_next_key='<Tab>'

"----- NERDTree -----"
map<C-n> :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTree<Space>

"----- VimWiki -----"
nnoremap <leader>wi :VimwikiIndex<CR>
nnoremap <leader>ws :VimwikiSearch<space>//<left>
