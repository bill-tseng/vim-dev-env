" line number setting
set number

" highlight search settin
nnoremap <C-c> :set hlsearch!<CR>

" ctags setting
set tags=./tags,./TAGS,tags,TAGS

" cscope setting
set cscopetag
set csto=0
set csre

if filereadable("cscope.out")
   cs add cscope.out   
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>

" taglist setting
nnoremap <F8> :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set ut=100

" nerdtree setting
nnoremap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos=1

" SrcExpl setting
nnoremap <F10> :SrcExplToggle<CR>

" trinity setting
nnoremap <F7> :TrinityToggleAll<CR>

" CurtineIncSw setting
nnoremap <C-x> :call CurtineIncSw()<CR>

" syntax highlighting setting
filetype plugin indent on
syntax on
