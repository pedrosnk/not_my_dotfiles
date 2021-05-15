call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'rakr/vim-two-firewatch'
Plug 'arcticicestudio/nord-vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/vim-github-dashboard'
" Plug 'scrooloose/syntastic'
" Plug 'kien/ctrlp.vim'
" Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'bling/vim-airline'
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-editors/vim-elixir'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'othree/yajs.vim'
Plug 'rking/ag.vim'
Plug 'fatih/vim-go'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'dag/vim-fish'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'majutsushi/tagbar'
Plug 'cypok/vim-sml'
Plug 'rhysd/vim-crystal'
Plug 'ntpeters/vim-better-whitespace'
Plug 'terryma/vim-multiple-cursors'
Plug 'lucidstack/ctrlp-mpc.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'palantir/tslint'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'plasticboy/vim-markdown'
Plug 'vim-scripts/ZoomWin'
Plug 'quramy/tsuquyomi'

Plug 'w0rp/ale'

Plug 'reasonml-editor/vim-reason-plus'


call plug#end()

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

let g:vim_markdown_folding_disabled = 1

" Ale configurations
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'typescript': ['prettier', 'tslint'],
\ 'elixir': ['mix_format'],
\}

let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver'],
\ 'elixir': ['credo', 'dialyxir', 'mix'],
\}

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_elixir_elixir_ls_release = '/Users/pedromedeiros/desenv/elixir-ls/rel'
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'

let g:ale_erlang_erlc_options = '-o /tmp/ -I src -I include -I _build/default/lib/' .
      \ '-I _build/default/lib/*/include -I apps*/ -I apps*/*/include'

" vim-go options
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" to load jsx on js files
let g:jsx_ext_required = 0

" colorscheme molokai
" colorscheme two-firewatch
colorscheme nord
set number
set relativenumber
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$']
set cursorline
"set cursorcolumn  was gertting slower
set ic
map <Leader>b :call InsertDebuggerLine()<CR>
map <c-p> :FZF -m <CR>

function! InsertDebuggerLine()
    let syntaxType = &syntax
    if syntaxType == "python"
	    let trace = expand("import ipdb; ipdb.set_trace()")
        execute "normal o".trace
    elseif syntaxType == "elixir"
	    let trace = expand("require IEx; IEx.pry")
        execute "normal o".trace
    elseif syntaxType == "ruby"
	    let trace = expand("binding.pry")
        execute "normal o".trace
    elseif index(["javascript", "javascript.jsx", "coffee", "typescript"], syntaxType) != -1
	    let trace = expand("debugger")
        execute "normal o".trace
    else
        echom "no debugger for current syntax type: " . syntaxType
    endif
endfunction

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

set ts=2 sw=2 sts=2

set expandtab
set mouse=a
set clipboard=unnamed

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let &colorcolumn=101
"let &colorcolumn=join(range(101,999),",")

set gfn=Hack:h12
set backspace=2

command WQ wq
command Wq wq
command W w
command Q q
