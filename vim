"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
set hlsearch
set incsearch
set autowrite
set title
set ruler
set confirm
set spell
set noswapfile
set background=dark
set mouse=a

nnoremap y "+y
vnoremap y "+y

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on
nnoremap y "+y
vnoremap y "+y
 
" Add numbers to the file.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/fzf.vim'
  "Plug 'itchyny/lightline.vim'
  Plug 'tomasr/molokai'                " Molokai colorscheme
  Plug 'morhetz/gruvbox'               " Gruvbox color scheme
  Plug 'dracula/vim', { 'as': 'dracula' } "Dracula
  Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle' }
  Plug 'dense-analysis/ale'            " Syntax checking and linting
  Plug 'preservim/nerdtree'            " File explore
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'  
  Plug 'jiangmiao/auto-pairs'
  " add this line to your .vimrc file
  Plug 'mattn/emmet-vim'
  Plug 'tmux-plugins/vim-tmux'
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'altercation/vim-colors-solarized'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'chriskempson/base16-vim'
  Plug 'bluz71/vim-nightfly-guicolors'
  Plug 'ghifarit53/tokyonight-vim'
  Plug 'arcticicestudio/nord-vim'
  "Plug 'lervag/vimtex'
  "Plug 'lervag/vimtex', { 'tag': 'v2.15' }
  Plug 'easymotion/vim-easymotion'
call plug#end()



"
"}}}
"
" " Set colorscheme
"colorscheme dracula
"colorscheme catppuccin_mocha
"colorscheme catppuccin_latte
"colorscheme catppuccin_frappe
"colorscheme catppuccin_macchiato
"colorscheme one
"colorscheme nord
"colorscheme solarized
"colorscheme monokai_pro
"let g:base16colorspace = 256
"colorscheme base16-gruvbox-dark-hard
"colorscheme nightfly
"colorscheme tokyonight
colorscheme gruvbox
inoremap < <><Left>
highlight Comment cterm=italic
"function! AccentDemo()
 " let keys = ['a','b','c','d','e','f','g','h']
  "for k in keys
   " call airline#parts#define_text(k, k)
"  endfor
 " call airline#parts#define_accent('a', 'red')
  "call airline#parts#define_accent('b', 'green')
  "call airline#parts#define_accent('c', 'blue')
  "call airline#parts#define_accent('d', 'yellow')
  "call airline#parts#define_accent('e', 'orange')
  "call airline#parts#define_accent('f', 'purple')
  "call airline#parts#define_accent('g', 'bold')
  "call airline#parts#define_accent('h', 'italic')
  "let g:airline_section_a = airline#section#create(keys)
"endfunction
"autocmd VimEnter * call AccentDemo()

set showtabline=2

let g:airline#extensions#tabline#enabled = 1 
" Enable airline
let g:airline_powerline_fonts = 1

" Set separators to slanted lines
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''

" You can also set the tabline separators for buffers/tabs
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#right_sep = ''

"let g:airline_theme='wombat'  " Base theme (you can change it if needed)
let g:airline#extensions#tabline#enabled = 2  " Enable tabline


" AIRLINE SETTINGS
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#syntastic#enabled = 0
let g:airline_detect_iminsert=1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 1


let g:Powerline_symbols = "fancy"
let g:Powerline_dividers_override = ["\Ue0b0","\Ue0b1","\Ue0b2","\Ue0b3"]
let g:Powerline_symbols_override = {'BRANCH': "\Ue0a0", 'LINE': "\Ue0a1", 'RO': "\Ue0a2"}
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''




"Airline Themes
"let g:airline_theme='dark'
"let g:airline_theme='badwolf'
"let g:airline_theme='ravenpower'
"let g:airline_theme='simple'
"let g:airline_theme='term'
"let g:airline_theme='ubaryd'
"let g:airline_theme='laederon'
"let g:airline_theme='kolor'
"let g:airline_theme='molokai'
"let g:airline_theme='powerlineish'

"colorscheme wombat256
"colorscheme tango
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme distinguished
"colorscheme monokai
"colorscheme molokai
"colorscheme ir_black
"colorscheme neodark
"colorscheme kolor
"colorscheme gotham
"colorscheme jellybeans 
"volorscheme desertEx
"colorscheme skittles_berry
"colorscheme skittles_dark
"colorscheme codeblocks_dark
" END AIRLINE SETTINGS

