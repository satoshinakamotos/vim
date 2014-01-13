syntax on                                                                                                              
filetype plugin on
set hlsearch
set autoindent
set title
set ignorecase
set scrolloff=4
set number
set autochdir
set tags=./tags;
set noswapfile
 
set showcmd
set incsearch
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn
 
set expandtab
set tabstop=2
set shiftwidth=2
 
set number
set undofile
set ruler
 
" Instead of :%s/foo/bar/g you just type :%s/foo/bar/
set gdefault
 
au FocusLost * :wa
au BufNewFile,BufRead *.tpl setfiletype php
inoremap kj <Esc>
colorscheme molokai
 
" Leader mappings - example below means press leader key then type ev to
" excute following command.
let mapleader = ","
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
 
"code folding = video: http://vimeo.com/4020903
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
 
"file types assignment
au BufNewFile,BufRead *.module set filetype=php
au BufNewFile,BufRead *.test set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
 
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType inc set omnifunc=phpcomplete#CompletePHP
 
" Make the mouse work in VIM
set mouse=a
 
" Shift-h or l to navigate tabs
:map <S-h> gT
:map <S-l> gt
 
" Nerd Tree file explorer Toggle
map <F2> :NERDTreeToggle<CR>
 
" Most Recently Used Files F12 Key
map <F5> :MRU<CR>
 
" : YRShow - Yank Ring Popup Clipboard toggle
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
 
" tag list toggle menu - used for browsing all vars and functions in a file
map <F4> :TlistToggle<CR>
 
" Gundo - Tree like view of your undo history - http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>
 
" greplace - The Global Replace plugin allows you to search and replace a pattern across multiple files interactively.
nnoremap <F6> :Gsearch
 
" buffer search list
nnoremap <leader>l :ls<CR>:b<space>
 
" quick commiting with git / svn using the <leader> key
nnoremap <leader>gl :!git pull; read -p '========================== PRESS ANY KEY ===> GIT PULL';<CR>
nnoremap <leader>gc :!git commit % -m 'updated '; git push;<C-left><C-left><C-left>
nnoremap <leader>gs :!git status; read -p '========================== PRESS ANY KEY ===> GIT STATUS';<CR>
nnoremap <leader>s :!svn commit % -m 'updated ';<C-left>
 
" jump to a function definition -  http://bgmerrell.blogspot.com/2008/02/first-of-all-let-me-introduce-ctags-and.html
nnoremap <F9> <C-w><C-]>
nnoremap <F10> <C-t>
 
" Drush Shortcuts
nnoremap <leader>dc :excute 'silent !drush cc all' | redraw!
 
" Most Recently Opened Files
nnoremap <leader>, :MRU<CR>