map <C-z> za
noremap <Leader>rr :source ~/.vimrc<CR>
noremap <C-n> :NERDTreeToggle<CR>
noremap <Leader>diff :w !diff % -<CR>

let s:surroundingSymbols = ['"', "'", '(', '<']
for c in s:surroundingSymbols
    execute 'noremap <Leader>'.c.' "xciw'.c.'<Esc>"xpa'.c.'<Esc>'
endfor

"noremap <Leader>" "xciw"<Esc>"xpa"<Esc>
"noremap <Leader>' "xciw'<Esc>"xpa'<Esc>
"noremap <Leader>( "xciw(<Esc>"xpa)<Esc>
"noremap <Leader>< "xciw<<Esc>"xpa><Esc>

let s:doubleSymbols = [['{', '}'], ['(', ')'], ['[', ']'], ['"', '"'], ["'", "'"]]
let s:char=''
let s:closing=''
for [s:char, s:closing] in s:doubleSymbols
    execute 'inoremap '.s:char.' '.s:char.s:closing.'<Left>'
endfor
"inoremap { {}<Esc>i
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
