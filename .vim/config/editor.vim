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
set cursorline
highlight Normal ctermbg=none
set background=dark

" ファイル関連
set autoread
set confirm
