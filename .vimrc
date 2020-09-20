set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=120
" no line wrap
set nowrap
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" enable mouse
" set mouse=a
 
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tComment'
Plugin 'Tagbar'
Plugin 'scala.vim'
Plugin 'Cpp11-Syntax-Support'
call vundle#end()
filetype plugin indent on

" TagBar shortcut
map ,t :TagbarToggle<CR>
map ,C :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map ,v :source ~/.vimrc<CR>
map ,r :sp ~/.vimrc<CR>
map ,a :!astyle -A2 %<CR>

" File explorer
let g:netrw_liststyle=3

" SuperRetab
:command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
:command! -range=% -nargs=0 Space2Tab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'

" tpp extension code highlight
au BufRead,BufNewFile *.tpp set filetype=cpp

" C++11 support
au BufRead,BufNewFile *.scala set filetype=scala
