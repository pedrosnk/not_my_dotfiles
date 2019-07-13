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

" Theme
Plug 'ericbn/vim-solarized'

" Languages
Plug 'elixir-editors/vim-elixir'

call plug#end()

" vim-airline
let g:airline_theme = 'powerlineish'
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
colorscheme solarized
set termguicolors

" hilight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
