" set t_ut=
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

let mapleader="," " Change <leader> to ,

source $HOME/.config/nvim/functions.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/maps.vim

"Use 24-bit (true-color) mode in Vim/Neovim
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

filetype plugin on

" Colorscheme
colorscheme ayu

set termguicolors
set ff=unix
set mouse=a
set cursorline!                 " Highlight the current line
set lazyredraw                  " Faster scrolling
set number                      " Show line number
set relativenumber              " Show relative line number
set showcmd                     " Show current command
set cc=140                      " Show linecolumn
set showmode                    " Show current mode
set autochdir                   " Change working directory to open file
set wildmode=longest:list,full  " Autocomplete
set wildignore=*.o,*.obj,*~     " Ignore file
set showmatch                   " highlight matching braces
set hlsearch                    " Highlight search
set ignorecase                  " ignore case while searching
set smartcase                   " unless uppercase explicitly mentioned
set smartindent                 " indent smartly
set nowrap                      " Don't wrap text
set laststatus=2                " Always show statusbar
set scrolloff=5                 " Minimum space on bottom/top of window
set sidescrolloff=7             " Minimum space on side
set sidescroll=1
set list                        " Display hidden chars as defined below
set listchars=tab:▷⋅,trail:⋅,nbsp:+,extends:»,precedes:«
set splitright                  " Open vsp on right and bottom
set splitbelow                  " which feels more natural
set pastetoggle=<F2>
set noshowmode                  " Hide mode (lightline shows mode)
set expandtab                   " Spaces > tabs
set tabstop=2                   " 2 spaces
set shiftwidth=2                " 2 2 CHAINZ
set nofoldenable                " Disable folding
set clipboard+=unnamedplus      " Use system clipboard

""" Undo settings
set undodir=~/.config/nvim/vim-undo
set undofile
set undolevels=1000  "max number of changes that can be undone
set undoreload=10000 "max number lines to save for undo on buffer reload

" syntax sync minlines=256  " Makes big files slow
" set synmaxcol=2048        " Also long lines are slow

" Filetype specific settings
autocmd! filetype *commit*,markdown setlocal spell         " Spell Check
autocmd! filetype *commit*,markdown setlocal textwidth=72  " Looks good
autocmd! filetype make setlocal noexpandtab                " In Makefiles DO NOT use spaces instead of tabs
:autocmd BufRead,BufNewFile kitty.conf setf dosini       " Syntax highlighting for .conf
autocmd BufWritePre * call TrimWhitespace() " Remove trailing whitespace when saving
autocmd! BufReadPost * call SetCursorPosition()
autocmd! BufWritePost * Neomake

