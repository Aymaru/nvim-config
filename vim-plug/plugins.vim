call plug#begin('~/.config/nvim/autoload/plugged')

" Denite
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Coc vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Floaterm
Plug 'voldikss/vim-floaterm'

"Auto pari for [, { and (
Plug 'jiangmiao/auto-pairs'

" Json with comments
Plug 'kevinoid/vim-jsonc'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Start Screen
Plug 'mhinz/vim-startify'

" Comments
Plug 'preservim/nerdcommenter'

call plug#end()

" Install missing plugins on startup

autocmd VimEnter *
			\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\| PlugInstall --sync | q
			\| endif
