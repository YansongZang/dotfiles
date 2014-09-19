call pathogen#infect()
call pathogen#helptags()
"   Manual Page for Options
"   http://vimdoc.sourceforge.net/htmldoc/options.html
set nocompatible
filetype plugin indent on
syntax on
set background=dark
colorscheme jellybeans
set grepprg=ack-grep
set grepformat=%f:%l:%m
let &termencoding=&encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8
set number
set hlsearch
set autoindent
set smartindent
set autoread
set autowrite
set backspace=indent,eol,start
set display=lastline
set expandtab
set shiftwidth=4
set tabstop=4
set formatoptions=cromM
set mouse=a
set hidden
set ignorecase
set incsearch
set linespace=6
set lazyredraw
set ruler
set scrolloff=2
set textwidth=79
set whichwrap=b,s,<,>,[,]
set wildmenu
set t_Co=256
set foldmethod=marker
set list
set listchars=tab:→\ ,trail:·
set cursorline
set cursorcolumn

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

autocmd BufRead *.py,*.java,*.cpp,*.c,*.h set cc=80 ts=4 sw=4
autocmd BufRead *.js set ts=4 sw=4
autocmd BufRead *.css set ts=2 sw=2
autocmd BufWritePre *.py,*.js,*.java,*.html,*.cpp,*.c,*.h :%s/\s\+$//e
autocmd BufRead,BufNewFile *.scss set filetype=scss
autocmd BufRead,BufNewFile *.textile set filetype=textile
autocmd BufRead,BufNewFile *.html set ts=2 sw=2 filetype=htmldjango
autocmd BufRead,BufNewFile *.tex set ts=2 sw=2
" bufexplorer
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerDisableDefaultKeyMapping=1
noremap <leader>e :BufExplorer<CR>
" ctrl-p
let g:ctrlp_working_path_mode=0
let g:ctrlp_custom_ignore = '\v[\/]\.(git|svn)$'
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files'],
    \ 2: ['.svn', 'cd %s && svn list -R'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
