" To set up Vundle:
" 1. run
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
" 2. from vim, run
" :PluginInstall
"
" more info at
" https://github.com/gmarik/Vundle.vim
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Yo dog, I heard you like vundle...
Plugin 'gmarik/Vundle.vim'
" Further Vundle plugins
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

"
" Settings for specific filetypes
"
filetype plugin indent on
" Scripting, configs, text
autocmd FileType text setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType fstab setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType sh setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType json setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2
" Programming
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
" Web stuff
autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType htmldjango setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=2 softtabstop=2
" LateX
autocmd FileType tex setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType bib setlocal expandtab shiftwidth=2 softtabstop=2

" Search settings
set hlsearch               " Highlight search results
set ignorecase
set smartcase

" MISC
set autoindent             " re-indent on newline
syntax on                  " syntax highlighting
set number                 " show line numbers
set ruler                  " always show cursor pos
set nowrap                 " no line wrapping
set colorcolumn=89         " 
set clipboard+=unnamedplus " Yank to clipboard
set noswapfile
set foldmethod=indent
set foldlevel=20

" Enable menu for tab selection
set wildmenu
set wildmode=longest,list,full

" Disable some weirdness
inoremap <C-Space> <C-x><C-o>
" set omnifunc=syntaxcomplete#Complete " Built-in autocomplete

"colorscheme solarized
"set background=dark
""Colorscheme and Font for gvim	
"if has('gui_running')
"    set guifont=Source\ Code\ Pro\ 12
"    colorscheme solarized
"    set background=dark
"endif

" Inspiration and thanks:
" https://github.com/jeffknupp/config_files/blob/master/.vimrc
