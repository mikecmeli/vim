if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
set splitright
set splitbelow
set wrap
set hidden
if has('nvim')
  tmap <Esc><Esc> i<bs><C-\><C-n>
  nnoremap <cr> i<cr>
  vnoremap gY y:tabnew<cr>pggVGgJyy:q!<cr>
  vnoremap Y y:tabnew<cr>pggVGJyy:q!<cr>
  nnoremap <leader>c :let @/=""<cr> 
  nnoremap <leader>h ?http<cr>
  nnoremap <leader>g ?git:(<cr>
  let norm = '<C-\><C-n>'
  let verticalSplit = ':vsp<space><bar><space>term<cr>'
  let horizontalSplit =  ':sp<space><bar><space>term<cr>'
  let npmRunDev = 'npm run dev<cr>'
  let moveFocusLeft = '<C-w><left>'
  let moveFocusRight = '<C-w><right>'
  let moveFocusUp = '<C-w><up>'
  let moveFocusDown = '<C-w><down>'
  let i = 'i'
  let enter = '<Enter>'
  exe "nnoremap I i<esc>I"
  exe "nnoremap A a<esc>A"
  exe "nnoremap <C-k> ".norm.moveFocusUp
  exe "nnoremap <C-j> ".norm.moveFocusDown
  exe "nnoremap <C-h> ".norm.moveFocusLeft
  exe "nnoremap <C-l> ".norm.moveFocusRight

  exe "tnoremap <Esc><C-k> ".norm.moveFocusUp.i
  exe "tnoremap <Esc><C-j> ".norm.moveFocusDown.i
  exe "tnoremap <Esc><C-h> ".norm.moveFocusLeft.i
  exe "tnoremap <Esc><C-l> ".norm.moveFocusRight.i
  exe "nnoremap <leader>f :vsp<Enter>".norm.moveFocusLeft.":q<Enter>"
  exe "nnoremap <leader><leader> :vsp <bar> term<Enter>".i
  exe "nnoremap <leader>/ :sp <bar> term<Enter>".i
endif
