"--------------------------------------------------------------
"          encoding & color                                 <<<
"--------------------------------------------------------------
set encoding=utf8
scriptencoding utf8
set fileencoding=utf-8
set termencoding=utf8
set fileencodings=utf-8,ucs-boms,euc-jp,ep932
set fileformats=unix,dos,mac
set ambiwidth=double
set nobomb
set t_Co=256

"--------------------------------------------------------------
"          Vim Options                                      <<<
"--------------------------------------------------------------
" スワップファイルの作成先を変更
set noswapfile
" ヤンクをクリップボードへ繋ぐ
set clipboard+=unnamed
" ビープ音を消す
set belloff=all
" 行番号系
set number
" タイトル系
set title
" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start
" 検索するときに大文字小文字を区別しない
set ignorecase
" 検索した時にハイライト
set hlsearch
set completeopt=menuone,noinsert
" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

"--------------------------------------------------------------
"          indent                                           <<<
"--------------------------------------------------------------
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
au FileType go setlocal sw=4 ts=4 sts=4 noet

"--------------------------------------------------------------
"          tab                                              <<<
"--------------------------------------------------------------
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

"--------------------------------------------------------------
"          change mode                                      <<<
"--------------------------------------------------------------
inoremap <silent> jj <ESC>

"--------------------------------------------------------------
"          ale eslint                                       <<<
"--------------------------------------------------------------
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier'],
\  'typecript': ['prettier'],
\  'vue': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

"--------------------------------------------------------------
"          NERDTree                                         <<<
"--------------------------------------------------------------
" Ctrl+eでNERDTreeを開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"--------------------------------------------------------------
"           deoplete                                        <<<
"--------------------------------------------------------------
"let g:deoplete#enable_at_startup = 1

"--------------------------------------------------------------
"          colorScheme                                      <<<
"--------------------------------------------------------------
colorscheme molokai " カラースキームにmolokaiを設定する
set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified
" files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified
" files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>`
" will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
\ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag,
" default is ''
let g:closetag_close_shortcut = '<leader>>'

"--------------------------------------------------------------
"          vim-closetag                                     <<<
"--------------------------------------------------------------
let g:closetag_filenames = '*.html,*.vue'
