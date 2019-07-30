execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme dracula

set autoread
set clipboard=unnamedplus
set colorcolumn=80
set noautoindent
set noexpandtab
set noshowmode
set nowrap
set number
set shiftwidth=8
set smartindent
set smarttab
set tabstop=8
set termguicolors
set updatetime=250

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_powerline_fonts = 1
let g:gitgutter_max_signs = 50000

" Mappings to control tabs
nnoremap <silent> <C-Left> :tabprevious<CR>
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-S-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Mappings to control splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Mapping to navigate hunks
nmap <silent> <C-Up> <Plug>GitGutterPrevHunk
nmap <silent> <C-Down> <Plug>GitGutterNextHunk

" Mappings to navigate tags
nnoremap <silent> <C-T> :GtagsCursor<CR>
nnoremap <silent> <C-F> :Gtags -r<CR><CR>
nnoremap <silent> <C-[> :cp<CR>
nnoremap <silent> <C-]> :cn<CR>
nnoremap <silent> <C-\> :cclose<CR>

" Mappings to search symbols
nmap <C-F>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-F>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-F>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-F>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-F>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-F>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-F>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-F>d :scs find d <C-R>=expand("<cword>")<CR><CR>
