filetype plugin indent on
"show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
au BufNewFile,BufRead,BufReadPost *.sac set filetype=c
au BufNewFile,BufRead,BufReadPost *.gp set filetype=gnuplot

colorscheme desert "nets-away
:syntax on
":color desert
"execute pathogen#infect()
"autocmd vimenter * NERDTree
 
:set mouse=a
:set wrap
:set linebreak
:set nolist  " list disables linebreak

"Spelling
":set spell spelllang=en_gb

" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

execute pathogen#infect()
set laststatus=2
