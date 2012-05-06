""" MyCustom
syntax on
set tabstop=3
set cindent
set smartindent
set autoindent
set noexpandtab
set showmatch
set shiftwidth=3
set softtabstop=3
set nocompatible
set pastetoggle=<f11>
set ignorecase
set incsearch
set number
set hidden
behave mswin

""" include confs
source ~/.vim/neocomplcache.conf
source ~/.vim/vundle.conf
source ~/.vim/quickrun.conf

""" change current directory
augroup grlcd
   autocmd!
   autocmd BufEnter * lcd %:p:h
augroup END

""" 開いているファイルが格納されているディレクトリをカレントディレクトリとする
:command! CDPWD :exec ":lcd " . expand("%:p:h")


"""""" 今日の日付
:let $TODAY = strftime('%Y%m%d')
:imap <silent> <Space>td <C-R>=strftime('%Y%m%d')<CR>

""" 作業ファイル作成・編集
:map <Space>wwl <Esc>:w ~/worklog/<C-R>=strftime('%Y%m%d')<CR>.txt<Enter>
:map <Space>ewl <Esc>:e ~/worklog/<C-R>=strftime('%Y%m%d')<CR>.txt<Enter>

""" UniteResume
map <Space>u <Esc>:UniteResume<Enter>

""" about buffer
map <Space>l <Esc>:Unite buffer<Enter>

map <Space>uf <Esc>:Unite file<Enter>

map <Space>b <Esc>:Unite bookmark<Enter>
map <Space>vf <Esc>:VimFiler<Enter>

""" 直前のバッファに戻る
map <Space>bb <Esc>:b#<Enter>

""" cNext, cPrev
map <Space>cn <Esc>:cn<Enter>
map <Space>cp <Esc>:cp<Enter>

""" VimFiler

""" utf8 で再読み込み
map <Space>cu <Esc>:e ++enc=utf8<Enter>

""" encoding
:set encoding=utf-8
:set fileencoding=utf-8
:set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

call unite#custom_default_action('source/bookmark/directory' , 'vimfiler')
