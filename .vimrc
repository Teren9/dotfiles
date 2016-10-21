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
Plugin 'kchmck/vim-coffee-script'
Plugin 'https://github.com/tpope/vim-rails.git'
Plugin 'https://github.com/tpope/vim-bundler.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rhysd/clever-f.vim'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'jplaut/vim-arduino-ino'
" Plugin 'tclem/vim-arduino'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'Raimondi/delimitMate'

"Plugin 'scrooloose/syntastic'



" Up to here
call vundle#end()            " required
filetype plugin indent on
set listchars=tab:•\ ,trail:•,extends:»,precedes:«
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set softtabstop=4
if has ("autocmd")
    filetype indent on
endif
" use intelligent indentation for C
" configure tabwidth and insert spaces instead of tabs
" set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
set nowrap
" set linebreak
" highlight ColorColumn ctermbg=magenta
set colorcolumn=81
set cursorline

" turn syntax highlighting on
" set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
set relativenumber
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
" "colorscheme gruvbox
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    " source ~/.vimrc_background
endif

if has("gui_running")
    "set guifont=CodeNewRoman\ Regular\ 14
    set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline\ 12

    if (strftime("%H") < 19 && strftime("%H") > 5)
        set background=light
        " colorscheme pencil
        colorscheme base16-solarized-light
    else
        set background=dark
        " colorscheme pencil
        colorscheme base16-chalk
    endif
    set guioptions=i
    " let g:pencil_neutral_code_bg = 1
    " let g:airline_theme = 'pencil'

    " set mouse=c
else
    colorscheme base16-bright
end

map ; :
imap jj <C-[>
" Statusline

set laststatus=2
set noshowmode
" Airline and Status line config -->
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" AirlineTheme {light theme}
" let g:lightline = {
"   \ 'colorscheme': 'jellybeans',
"   \ }

" set statusline=%F%m%r%h%w\
" set statusline+=%{fugitive#statusline()}\
" set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
" set statusline+=\ [line\ %l\/%L]
" set statusline+=%{rvm#statusline()}
map <C-n> :NERDTreeToggle<CR>

" Disable the arrow keys

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

let mapleader = ","

""" SYSTEM CLIPBOARD COPY & PASTE SUPPORT

set pastetoggle=<F2>
" Copy past to/from clipboard
vnoremap <C-c> "*y
map <silent><Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>"
map <silent><Leader><S-p> :set paste<CR>O<esc>"*]p:set nopaste<cr>"


noremap <Leader>a $
noremap <Leader>i ^
map <Leader>b :call BackgroundToggle()<cr>

" change colorscheme function
function BackgroundToggle()
    if (g:colors_name != 'base16_bright')
        if (&bg == 'dark')
            " colorscheme base16-unikitty-light
            set bg=light
            colorscheme base16-solarized-light
        elseif(&bg == 'light')
            set bg=dark
            colorscheme base16-chalk
        endif
    endif
endfunction


" function BackgroundToggle()
"   if (g:colors_name == 'base16-chalk')
"     " colorscheme base16-unikitty-light
"     colorscheme base16-solarized-light
"   elseif(g:colors_name == 'base16-solarized-light')
"     colorscheme base16-chalk
"   endif
" endfunction

map <C-P> CtrlPBuffer

inoremap <C-e> <C-o>a


" Arduino syntax

au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

