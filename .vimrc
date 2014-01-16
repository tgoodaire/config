syntax on
set autoindent
set hlsearch
set incsearch
set ignorecase smartcase
set history=100
set nocompatible
set nowrap
set ruler
set bs=2
set number
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/tmp
set writebackup
set autoindent
set smartindent
set fileformats=unix,dos,mac
set background=dark
set noerrorbells
colorscheme desert
set laststatus=2
set wildmenu
filetype on
filetype plugin indent on

call pathogen#infect()
call pathogen#helptags()

augroup vimrc_autocmds
        autocmd!
        " highlight characters past column 120
         autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
         autocmd FileType python match Excess /\%120v.*/
         autocmd FileType python set nowrap
augroup END

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Nerdtree
map <F2>  :NERDTreeToggle

" Use l to toggle display of whitespace
" BROKEN
" nmap l :set list!
" And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬
"
" automatically change window's cwd to file's dir
set autochdir
"
" I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Fold 
set foldmethod=indent
set foldlevel=99

" Easier window navigation
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

autocmd BufWritePost *.py call Flake8()

set statusline=%F%m%r%h%w\ 
set statusline+=%{fugitive#statusline()}\    
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [line\ %l\/%L]          

let g:syntastic_check_on_open=1
