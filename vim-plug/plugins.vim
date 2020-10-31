call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" Install missing plugins on startup

autocmd VimEnter *
			\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\| PlugInstall --sync | q
			\| endif
