set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-sensible'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'

Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rking/ag.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'saltstack/salt-vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set hlsearch
set smartcase
set background=dark
colorscheme solarized
let g:go_fmt_autosave = 0
let &colorcolumn=join(range(81,999),",")

set et
set tabstop=2
set number
set shiftwidth=2
set list listchars=tab:»·,trail:·
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let mapleader=","
let g:ctrlp_map = '<Leader>f'
nnoremap <leader>t :CtrlPTag<cr>

" move up the directory hierarchy until it has found the file
set tags=tags;/
nnoremap <leader>a *:AgFromSearch<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nmap <Leader>hu <Plug>GitGutterRevertHunk
"let g:ag_working_path_mode="r"

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1


" if you prefer a leader

noremap <silent> <Leader>z :call Zing()<CR>
inoremap <silent> <Leader>z <C-C>:call Zing()<CR>

func! Zing()
  exec "w"
  exec "!zing"
endfunc


" Go Vim
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>dd <Plug>(go-def)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)


let g:go_highlight_functions = 1 
let g:go_highlight_methods = 1 
let g:go_highlight_structs = 1 
let g:go_highlight_operators = 1 
let g:go_highlight_build_constraints = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

