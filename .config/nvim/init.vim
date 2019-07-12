
" Plug instalation
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/fzf'

call plug#end()

" keymaps

nnoremap <C-p> :<C-u>FZF<CR>
