if &compatible
  set nocompatible
endif

let dein_plugin_dir = expand('~/.cache/dein')
let nvim_dir = expand('~/.config/nvim/')

let dein_path = dein_plugin_dir . '/repos/github.com/Shougo/dein.vim/'
if !isdirectory(dein_path)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(dein_path))
endif
execute 'set runtimepath^=' . dein_path

if dein#load_state(dein_plugin_dir)
  call dein#begin(dein_plugin_dir)
  call dein#load_toml(nvim_dir.'dein.toml', {'lazy': 0})
  " call dein#load_toml('dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent  on

if has('vim_starting') && dein#check_install()
  call dein#install()
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
inoremap < <><Left>


