set iskeyword+=-
set formatoptions-=cro

syntax enable
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
set t_Co=256
set conceallevel=0
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set laststatus=2
set number
set cursorline
set showtabline=2
set noshowmode
set nobackup
set nowritebackup
set signcolumn=yes
set updatetime=300
set timeoutlen=100
set clipboard=unnamedplus
set incsearch

au! BufWritePost $MYVIMRC source %

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

cmap w!! w !sudo tee %
