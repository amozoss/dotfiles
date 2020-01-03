set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'Valloric/YouCompleteMe'
Plug 'VundleVim/Vundle.vim'
Plug 'airblade/vim-gitgutter'
Plug 'aklt/plantuml-syntax'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'fatih/vim-go'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'majutsushi/tagbar'
Plug 'mtscout6/vim-cjsx'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'saltstack/salt-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

" All of your Plugins must be added before the following line
filetype plugin indent on    " required

set hlsearch
set smartcase

" fixes messed up colors sometimes
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized

set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

set et
set tabstop=2
set number
set shiftwidth=2
set list listchars=tab:»·,trail:·
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

let mapleader=","
nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>f :Files<cr>

" move up the directory hierarchy until it has found the file
set tags=tags;/
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nmap <Leader>hu <Plug>GitGutterRevertHunk
"let g:ag_working_path_mode="r"

let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

nnoremap <silent> <Leader>r :Rg <C-R><C-W><CR>
set grepprg=rg\ --vimgrep

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
au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>i <Plug>(go-info)


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

