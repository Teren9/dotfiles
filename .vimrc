set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundler plugins go here

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'https://github.com/ervandew/supertab.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'https://github.com/scrooloose/nerdtree.git'

" Up to here
call vundle#end()            " required
filetype plugin indent on

set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
if has ("autocmd")
  filetype indent on
endif
" use intelligent indentation for C
" configure tabwidth and insert spaces instead of tabs
" set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
" set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" spell settings
:setlocal spell spelllang=en
" set the spellfile - folders must exist
set spellfile=~/.vim/spellfile.add
set nospell
map <M-Down> ]s
map <M-Up> [s
" #################################
" My edits:
" #################################
"let g:solarized_termcolors=256
set t_Co=256
syntax enable
set background=dark
"colorscheme gruvbox
if has("gui_running")
  colorscheme railscasts
  set guifont=Monaco\ Regular\ 11
  set guioptions=i
  set mouse=c
else
  colorscheme desert
end

map ; :
imap jj <C-[>


map <C-n> :NERDTreeToggle<CR>

" Disable the arrow keys

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

