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
Plugin 'chase/vim-ansible-yaml'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'christianrondeau/vim-base64'
Plugin 'kchmck/vim-coffee-script'
" To setup YCM (Fedora):
" sudo dnf install automake gcc gcc-c++ kernel-devel cmake
" sudo dnf install python-devel python3-devel
" cd ~/.vim/bundle/YouCompleteMe
" ./install.py

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
autocmd FileType xml setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType yaml setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufEnter *.yml.j2 :setlocal filetype=yaml
autocmd BufEnter *.yaml.j2 :setlocal filetype=yaml
autocmd FileType markdown setlocal expandtab shiftwidth=2 softtabstop=2
" Programming
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType coffee setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType go setlocal noet ts=4 sw=4 sts=4
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
vnoremap // y/<C-R>"<CR>   " double-slash to search highlighted text

" Statusline settings
set laststatus=2
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

" Enable menu for tab selection
set wildmenu
set wildmode=longest,list,full

" Folding
set foldmethod=indent
set foldlevel=20

" MISC
set autoindent             " re-indent on newline
syntax on                  " syntax highlighting
set relativenumber         " show relative line numbers
set number                 " also show current line number
set ruler                  " always show cursor pos
set nowrap                 " no line wrapping
"set colorcolumn=89        " 
set clipboard+=unnamedplus " Yank to clipboard
set noswapfile             " Disable .swp files
"set list                   " Enable end-of-line char
" nmap $ g_                " dont include line break for $ movement

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
"
"color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
hi CursorLine ctermbg=8 "8 = dark gray, 15 = white
