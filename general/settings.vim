set iskeyword+=-
set formatoptions-=cro

syntax enable
set clipboard=unnamedplus
set hidden

set nowrap
set whichwrap+=<,>,[,],h,l

set encoding=utf-8
set fileencoding=utf-8

set pumheight=10
set ruler
set cmdheight=2
set mouse=a

set splitbelow
set splitright

set conceallevel=0

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set showtabline=2

set smartindent
set autoindent

set laststatus=2

set background=dark
set cursorline
set cursorcolumn
set noshowmode

set nobackup
set nowritebackup

set signcolumn=yes

set updatetime=300
set timeoutlen=500
set incsearch

set relativenumber
set number

set ignorecase
set smartcase

set t_Co=256
set termguicolors

set wildmode=longest,list,full

autocmd InsertEnter * norm zz

autocmd BufWritePre * %s/\s\+$//e

au! BufWritePost $MYVIMRC source %

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

cmap w!! w !sudo tee %
