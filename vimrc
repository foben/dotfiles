" To set up Vundle:
" 1.    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2.   :PluginInstall
" 3.   cd ~/.vim/bundle/YouCompleteMe
" SETUP BUILD DEPENDENCIES 
" 4.   python3 install.py --go-completer --java-completer

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
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'chr4/nginx.vim'

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
autocmd BufRead,BufNewFile *.conf set filetype=nginx
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

" Window navigation with Space
nnoremap <space>h :wincmd h<CR>
nnoremap <space>j :wincmd j<CR>
nnoremap <space>k :wincmd k<CR>
nnoremap <space>l :wincmd l<CR>
nnoremap <space>q :wincmd q<CR>

" MISC
colorscheme solarized
set background=dark
set autoindent                  " re-indent on newline
syntax on                       " syntax highlighting
set relativenumber              " show relative line numbers
set number                      " also show current line number
set ruler                       " always show cursor pos
set nowrap                      " no line wrapping
set clipboard+=unnamedplus      " Yank to clipboard
set noswapfile                  " Disable .swp files
inoremap <C-Space> <C-x><C-o>   " Disable some weirdness
" Keep clipboard on exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" Inspiration and thanks:
" https://github.com/jeffknupp/config_files/blob/master/.vimrc
