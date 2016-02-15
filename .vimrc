

set number
let NERDTreeIgnore = ['\.pyc$', '\.egg-info$']
set cursorline
set cursorcolumn
set ic
map <Leader>b :call InsertDebuggerLine()<CR>

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
    elseif syntaxType == "javascript"
	    let trace = expand("debugger;")
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

set ts=4 sw=4 sts=4

set expandtab
set mouse=a

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"let &colorcolumn=80
let &colorcolumn=join(range(81,999),",")

set gfn=Hack:h12
set backspace=2

command WQ wq
command Wq wq
command W w
command Q q
