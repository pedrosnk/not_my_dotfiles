" Plug instalation
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf'
Plug 'tpope/vim-projectionist'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'

Plug 'reasonml-editor/vim-reason-plus'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'jparise/vim-graphql'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Theme
Plug 'ericbn/vim-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-two-firewatch'

" Languages
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'leafgarland/typescript-vim'
Plug 'LnL7/vim-nix'
Plug 'kchmck/vim-coffee-script'

Plug 'Shopify/shadowenv.vim'


call plug#end()

" vim-airline
" let g:airline_theme = 'powerlineish'
let g:airline_theme = 'nord'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#enabled = 0
let no_buffers_menu=1

set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" keymaps

nnoremap <C-p> :<C-u>FZF<CR>

" Elixir
let g:mix_format_on_save = 1

" Prettier
let g:prettier#config#config_precedence = '.prettierrc'

" Ale configurations

let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'typescript': ['prettier', 'tslint'],
\ 'typescriptreact': ['prettier', 'tslint'],
\ 'javascript': ['prettier', 'eslint'],
\ 'reason': ['refmt'],
\}

let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver', 'typecheck'],
\ 'typescriptreact': ['tslint', 'tsserver', 'typecheck'],
\ 'javascript': ['eslint', 'flow', 'flow-language-server'],
\ 'graphql': ['gqlint'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
" let g:ale_ruby_sorbet_options = '--enable-all-experimental-lsp-features'

" general settings

syntax on
set ts=2 sw=2 sts=2
set expandtab
set mouse=a
set clipboard=unnamed
set ruler
set number

" Set theme
syntax enable
  set background=light
" colorscheme solarized
colorscheme two-firewatch
"colorscheme nord
"set termguicolors

" hilight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
