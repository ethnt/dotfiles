call plug#begin('~/.local/share/nvim/plugged')
  " Browser commands (-)
  Plug 'tpope/vim-vinegar'
  " Pack of language syntaxes
  Plug 'sheerun/vim-polyglot'
  " Fuzzy searching files
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Elixir utilities
  Plug 'slashmili/alchemist.vim'
  " Surround commands (ysiw)
  Plug 'tpope/vim-surround'
  " Git integrations
  Plug 'tpope/vim-fugitive'
  " Bottom line for status
  Plug 'itchyny/lightline.vim'
  " Linting engine
  Plug 'dense-analysis/ale'
  " Autocomplete popovers
  Plug 'Shougo/deoplete.nvim'
  " Python Autocompletion
  Plug 'deoplete-plugins/deoplete-jedi'
  " NERDTree
  Plug 'preservim/nerdtree'
call plug#end()

let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
