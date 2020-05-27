call plug#begin('~/.local/share/nvim/plugged')
  " Browser commands (-)
  Plug 'tpope/vim-vinegar'
  " Pack of language syntaxes
  Plug 'sheerun/vim-polyglot'
  " Fuzzy searching files
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()
