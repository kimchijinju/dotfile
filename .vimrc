if has ("syntax")
    syntax on
endif
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set tabstop=4
set shiftwidth=4
set nu
set showmatch
set ruler
set mouse=a
set autoindent
set cindent
set smartindent
let g:python_highlight_all = 1
let g:user42 = 'hankim'
let g:mail42 = 'hankim@student.42seoul.kr'
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'arcticicestudio/nord-vim'
  Plug 'adrian5/oceanic-next-vim'
call plug#end()

colorscheme nord

nmap ` :NERDTreeToggle<CR>
nnoremap <Space>y    "+y
nnoremap <Space>p   "+p
nnoremap <Space>a   gg<S-v>G

" navigation 기능 보완 ---------------------------------
nnoremap gk k
nnoremap gj j

nnoremap <Space>h ^
nnoremap <Space>l $
noremap <Space>j 8j
noremap <Space>k 8k

imap jk <Esc>
imap kj <Esc>
:highlight Comment term=bold ctermfg=75

au bufnewfile *.cpp 0r ~/.vim/autoload/template.cpp
