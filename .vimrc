" NeoBundleの設定
scriptencoding utf-8
set nocompatible

if has('vim_starting')
  set rtp+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin('~/.vim/bundle/')
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'scrooloose/syntastic'
call neobundle#end()
filetype plugin indent  on

if !has('vim_starting')
  call neobundle#call_hook('on_source')
endif

let g:indent_guides_enable_on_vim_startup=1
let g:user_emmet_leader_key='<c-e>'

" 環境設定系
set encoding=utf-8
" ファイル名表示
set title
" インデント設定
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
" 視界確保
set scrolloff=5
set sidescrolloff=16
set sidescroll=1
" 動作環境との競合関連設定
" バックスペースでいろいろ消せるように
set backspace=indent,eol,start
" OSのクリップボード使う
set clipboard=unnamed,unnamedplus
" マウス有効
set mouse=a
" バックアップ作らない
set nobackup
set noswapfile
set noundofile
" ビープ音設定
" ビープ音無効
set visualbell t_vd=
set noerrorbells

" 検索/置換の設定
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set gdefault

set wildmenu wildmode=list:longest,full
set history=50

" シンタックスハイライト
syntax on
colorscheme molokai
set cursorline
highlight Normal ctermbg=none
set background=dark

" ファイル関連
set autoread
set confirm

" 括弧補完
" inoremap {<Enter> {}<Left><CR><ESC><S-a>
" inoremap [<Enter> []<Left><CR><ESC><S-a>
" inoremap (<Enter> ()<Left><CR><ESC><S-a>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
