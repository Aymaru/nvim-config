call plug#begin('~/.config/nvim/autoload/plugged')

" Denite
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Themes
Plug 'morhetz/gruvbox'

"Auto pari for [, { and (
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Install missing plugins on startup

autocmd VimEnter *
			\ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\| PlugInstall --sync | q
			\| endif
