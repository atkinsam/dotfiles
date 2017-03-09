" vim config

set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" All plugins must go below this line
" ======================================



Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'https://github.com/jiangmiao/auto-pairs'
Plugin 'https://github.com/scrooloose/syntastic'
Plugin 'https://github.com/petRUShka/vim-opencl'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/airblade/vim-gitgutter'
Plugin 'octol/vim-cpp-enhanced-highlight'

Bundle 'Powerline/powerline', {'rtp': 'powerline/bindings/vim/'}


" ======================================
" All plugins must go above this line ^


call vundle#end()
filetype plugin indent on


" Non-plugin commands go below this line
" ======================================

set nowrap
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline_powerline_fonts=1
set laststatus=2
set number
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme neverland
set guifont=Cousine\ for\ Powerline
let g:airline_theme='distinguished'
set directory^=$HOME/.vim/tmp//
set colorcolumn=80
set t_ut=
map <C-n> :NERDTreeToggle<CR>

" Associate GL files with C syntax
au BufRead,BufNewFile *.fragmentshader set filetype=c
au BufRead,BufNewFile *.vertexshader set filetype=c

" Enable syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages={'level':'warnings'}
" Map C-w + E to toggle syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':   [],'passive_filetypes': []  }
noremap <C-w>e :SyntasticCheck<CR>
noremap <C-w>f :SyntasticToggleMode<CR>
