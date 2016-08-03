
"""""""""""""""""""""""""""""
" @basic, @func, 2016-07-27
"""""""""""""""""""""""""""""
if has("win32")
	autocmd! BufWrite D:/gitlib/*.md source D:/gitlib/Session.vim
"   slash /, mirror image of the common slash (/)."	
"	autocmd! BufEnter D:\gitlib\*.md source D:\gitlib\Session.vim
endif
autocmd! BufNewFile,BufWrite *.py setf python
autocmd! BufNewFile,BufEnter *.md setf markdown 
" autocmd BufNewFile,BufWrite *.markdown, *.md setf markdown 

map <F11> <Esc>:tabclose<CR>
map <F10> <Esc>:tabnew<CR>
"<Esc> Escape; <CR> Enter"

if has("win32")
	autocmd! BufEnter C:\Program Files (x86)\Vim\_vimrc source C:\Program Files (x86)\Vim\_vimrc
endif
" autocmd! BufWritePost $VIM\_vimrc source $VIM\_vimrc

set showmatch 
"( then auto )"
set incsearch
"\b auto \b*,  incremental searching"

"""""""""""""""""""""""""""""
" rtp, 2016-07-27
"""""""""""""""""""""""""""""
" :echo $VIMRUNTIME
" @ans: C:\Program Files (x86)\Vim\vim74"
" :echo $VIM\_vimrc"
"""""""""""""""""""""""""""""
" Vbundle, 2016-07-27
"""""""""""""""""""""""""""""
" Plugin "D:\dotemacsw\vim-markdown-master"
" must use Vundle, https://github.com/xiaoanh/Vundle.vim
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" call vundle#end()

"""""""""""""""""""""""""""""
" plugin, 2016-07-26
"""""""""""""""""""""""""""""
filetype on
filetype plugin indent on
" filetype plugin on 
" filetype indent on

"""""""""""""""""""""""""""""
" color, 2016-07-18
"""""""""""""""""""""""""""""
"set colortheme=murphy
"colorscheme desert 
set nu
colorscheme murphy

"""""""""""""""""""""""""""""
" vim7.1 encoding @win7, 2016-07-18
" http://mikzhang.iteye.com/blog/1980430
"""""""""""""""""""""""""""""
set encoding=utf-8
" set fileencodings=utf-8,chinese,latin-1
if has("win32")
"	set fileencoding=chinese
	set fileencoding=utf-8
else
	set fileencoding=utf-8
endif
" for menu encoding
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" for console encoding
language messages zh_CN.utf-8

"""""""""""""""""""""""""""""
" initial, 2016-07-18
"""""""""""""""""""""""""""""

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin



