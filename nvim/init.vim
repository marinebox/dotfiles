" init.nvim
" =========================================================
" options
" =========================================================
" visual ==================================================
" set termguicolors	" True Color
set title		" 現在のファイル名をタブ名に表示
set number		" show line number
set showmatch		" 括弧入力時、対応する括弧を強調する
set matchtime=3		" 前記強調を0.3 sec.行う

" search / substitute =====================================
set ignorecase		" 検索時、大文字・小文字を区別しない
set smartcase		" ただし、大文字が入力された場合は区別する
set wrapscan		" 検索時、ファイル末端に達した場合は始端に戻る

" indent ==================================================
set expandtab		" tabstepで指定した個数スペースが入力されたとき、タブとして扱わない
set tabstop=4		" スペース4個を1つのタブとして扱う
set softtabstop=4	" <tab>を4個のスペースキー入力として扱う
set shiftwidth=4	" <<,>>によるインデントを4個のスペース挿入として扱う

" =========================================================
" keymap
" =========================================================
" スペースキーをleaderキーとして利用する
let mapleader="\<Space>"

" 入力モード時、jjをESCとみなす。また、同時に保存を行う。
inoremap <silent> jj <Esc>:<C-u>w<CR>

" 通常モード時、ESC2回入力することでハイライトを消す
nmap <silent> <Esc><Esc> :noh<CR>

" 画面を縦/横に分割する
nnoremap <silent> <Leader>v :vs<CR>
nnoremap <silent> <Leader>s :sp<CR>
" カーソルを各方向の画面に移動する
nnoremap <silent> <Leader>h <C-w>h
nnoremap <silent> <Leader>j <C-w>j
nnoremap <silent> <Leader>k <C-w>k
nnoremap <silent> <Leader>l <C-w>l


" =========================================================
" dein init
" =========================================================
let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

" =========================================================
" dein scripts
" =========================================================
let s:config_dir = expand('$XDG_CONFIG_HOME/nvim')
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    call dein#load_toml(s:config_dir . '/dein.toml', {'lazy': 0})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

colorscheme iceberg

