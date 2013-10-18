set nu
set sw=4 ts=4 sts=4 smarttab
set ai " auto indent
"set textwidth=79

"set spell " spell check

set sm  " show match
set hls " high lighted selected
set encoding=utf-8

filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menu

set showcmd
set ru " ruler

" remember last edit place
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" showmarks setting
""""""""""""""""""""""""""""""
let showmarks_enable = 1 " Enable ShowMarks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" " Show which marks
let showmarks_ignore_type = "hqm" " Ignore help, quickfix, non-modifiable buffers
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction
