
set nocompatible " be iMproved, required
filetype off     " required
set noswapfile

" Keep Plug commands between plug#begin() and plug#end().
call plug#begin()
Plug 'romainl/flattened'
Plug 'christoomey/vim-tmux-navigator' " navigate seamlessly between vim and tmux splits
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'vim-ruby/vim-ruby'

Plug 'janko/vim-test'             " Run Ruby and Elixir tests

Plug 'airblade/vim-gitgutter'     " Show git diff of lines edited
Plug 'tpope/vim-fugitive'         " :Gblame
Plug 'tpope/vim-rhubarb'          " :GBrowse

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'styled-components/vim-styled-components'

Plug 'vim-airline/vim-airline'    " Vim powerline
Plug 'kchmck/vim-coffee-script'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'           " Set up fzf and fzf.vim

" Plug 'Konfekt/FastFold'  " Fix slowness with large files

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin indent on    " required

let mapleader = ","

" Look and Feel settings
syntax enable
set background=dark
" https://github.com/romainl/flattened
colorscheme flattened_dark

set wildmenu " when opening a file with e.g. :e ~/.vim<TAB> there is a graphical menu of all the matches
set ttyfast
set lazyredraw
set updatetime=300

" CoC extensions
let g:coc_global_extensions = ['coc-prettier',  'coc-tsserver', 'coc-go', 'coc-html', 'coc-css', 'coc-json', 'coc-tailwindcss', 'coc-solargraph']

" Add CoC ESLint if ESLint is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"  let g:coc_global_extensions += ['coc-eslint']
endif

" Prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" undo file
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000

nnoremap <silent> <Leader>r :Rg <C-R><C-W><CR>
set grepprg=rg\ --vimgrep

noremap <silent> <Leader>z :call Zing()<CR>
inoremap <silent> <Leader>z <C-C>:call Zing()<CR>

func! Zing()
  exec "w"
  exec "!zing"
endfunc

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1

" key bindings
" Go Vim
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>dd <Plug>(go-def)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gi <Plug>(go-implements)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>i <Plug>(go-info)

nnoremap <leader>t :CtrlPTag<cr>
nnoremap <leader>f :Files<cr>


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>dr <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Format
" nmap <leader>f   :CocCommand prettier.formatFile<CR>

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

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

" Use c-j for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to
" enable no select by `"suggest.noselect": true` in your configuration file
inoremap <silent> <expr><c-j>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ CheckBackspace() ? "\<C-j>" :
       \ coc#refresh()
inoremap <expr><c-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

" Map <tab> for trigger completion, completion confirm, snippet expand and jump
" like VSCode:
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#_select_confirm() :
	\ coc#expandableOrJumpable() ?
	\ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	\ CheckBackspace() ? "\<TAB>" :
	\ coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" set cursor to block and line
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Numbers
set number
set numberwidth=4
set ruler

" paste mode
nnoremap <F5> :set invpaste paste?<CR>
set pastetoggle=<F5>
set showmode

" Indentation
set autoindent
set cindent
set smartindent

" https://superuser.com/questions/550669/my-copy-of-vim-is-running-extremely-slowly-when-i-edit-medium-to-large-eg-1000
" Can use `Plug 'Konfekt/FastFold'` but files still open slow, so not worth it
" Folding
" set foldmethod=syntax
" set foldlevel=99
" Enable folding with the z key
" nmap z za

" Disable all bells and whistles
set noerrorbells visualbell t_vb=

" Tab Options
set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab

" Delete empty space from the end of lines on every save
autocmd BufWritePre * :%s/\s\+$//e

" Set default encoding to utf-8
set encoding=utf-8
set termencoding=utf-8


" Disable backups and swap files
"set nobackup
"set nowritebackup
"set noswapfile


set ignorecase " Ignore case when searching
set smartcase  " When searching try to be smart about cases
set incsearch  " Jumping search
set hlsearch

" Always show the status line
set laststatus=2

" Allow copy and paste from system clipboard
" set clipboard=unnamed

" Spellcheck for features and markdown
au BufRead,BufNewFile *.md setlocal spell
au BufRead,BufNewFile *.md.erb setlocal spell
au BufRead,BufNewFile *.feature setlocal spell

" Delete characters outside of insert area
set backspace=indent,eol,start

" +++ Shortcuts +++
" Open Buffer
nnoremap <silent><leader>l :Buffers<CR>
" Open test file for a current file
nnoremap <silent><leader>s :A<CR>
" Open test file for a current file in a vertical window
nnoremap <silent><leader>v :AV<CR>
" Vertically split screen
nnoremap <silent><leader>\ :vs<CR>
" Split screen
nnoremap <silent><leader>/ :split<CR>

" Faster saving and exiting
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>q :q!<CR>
nnoremap <silent><leader>x :x<CR>
" Open Vim configuration file for editing
nnoremap <silent><leader>2 :e ~/.vimrc<CR>
" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" Toggle relative line numbers
nnoremap <leader>rn :set relativenumber!<cr>

" If fzf installed using git
set rtp+=~/.fzf

let $FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules,.cache,public}/*" 2> /dev/null'



" vim-test shortcut for running tests
nnoremap <silent><leader>; :TestNearest<CR>

" Fix some weird error with Fugitive
let g:fugitive_pty = 0

" Fix syntax highlight for Coc plugin floating errors
hi CocErrorFloat guifg=Magenta guibg=Magenta

" 0-15 numbers match ANSI colors in Terminal preferences https://jeffkreeftmeijer.com/vim-16-color/
hi CocMenuSel ctermbg=0 ctermfg=7
hi CocFloating    ctermbg=8 ctermfg=10
hi CocFloatThumb  ctermbg=8 ctermfg=10

" Use templates https://vimtricks.com/p/automated-file-templates/
autocmd BufNewFile *.tsx             0r ~/dotfiles/skeletons/typescript-react.tsx
autocmd BufNewFile *content/blog*.md 0r ~/dotfiles/skeletons/blog-post.md
autocmd BufNewFile *.sh              0r ~/dotfiles/skeletons/script.sh
autocmd BufNewFile *.html            0r ~/dotfiles/skeletons/page.html


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
