" vim-plug plugin mentru manageriatul pluginurilor 
call plug#begin('~/.nvim/plugged')

" Color Schemes
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/morhetz/gruvbox.git'

" Vim-Airline
" The line on the bottem with pretty colors
Plug 'https://github.com/vim-airline/vim-airline.git'
" Make the line always vizible 
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

""" AutoCompletion

" YouCompletMe
Plug 'https://github.com/Valloric/YouCompleteMe.git', { 'do': 'sudo apt-get install build-essential cmake; sudo apt-get install python-dev python3-dev; ./install.py --clang-completer --go-completer'}
" Obs.
" 	You have to run install 

" Syntastic
" When you save a file it chesk for erros in the syntacs
Plug 'https://github.com/scrooloose/syntastic.git'

" T-Comment
" Helps commenting blocks of text
Plug 'https://github.com/vim-scripts/tComment.git'
" Remaping <C-_> <C-_> (from tcomment) to <S-c>  , <S> = Shift
map <S-c> <C-_><C-_>

" Vim auto-pairs
" Insert or delete brackets, parens, quites in pairs
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" vim-searchindex
" shows search results
Plug 'https://github.com/google/vim-searchindex.git'

" Tabular
" Makes an alignment based on a pattern
Plug 'https://github.com/godlygeek/tabular.git'
" Uses 
" 	:Tab /regex pattern to aline too
" Or
" 	:Tab /regex pattern\zs 
" 	this eximne allines afther the caracter afther the pattern leaving the
" 	pattern allone 

" Vim-GitGutter
" Shows git diff on the fille
Plug 'https://github.com/airblade/vim-gitgutter.git'

" NeardTree 
" For looking at the tree structure
Plug 'https://github.com/scrooloose/nerdtree.git'
" Mapping the neardTree toggle to F
map <F2> :NERDTreeToggle<CR>

" TagBar
" Showing the structure of a file 
Plug 'https://github.com/majutsushi/tagbar.git'
" Dependencies 
" Exuberant ctags 5.5
" Mapping the toggle pannel to F8
nmap <F8> :TagbarToggle<CR>

" Ctrl-p
" Fuzzy finder 
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'

" Tab Management
" :TabooReame < renames a tab
" gt <- next tab
" gT < prev tab
Plug 'https://github.com/gcmt/taboo.vim.git'

""" Snippers

" UltiSnip
" This is the engine
Plug 'https://github.com/SirVer/ultisnips.git'

" Vim-Snippets
" This are the snippets
Plug 'https://github.com/honza/vim-snippets.git'
" Setting key dindings
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"
" Usage
" 	ctrl + e 	- expande snippet
" 	ctrl + k	- travel forword on the snippet
" 	ctrl + j	- travel backwords on the snippet


" Vim-Session
" Needs vim-misc to run
" Saves the session 
Plug 'https://github.com/xolox/vim-misc.git'
Plug 'https://github.com/xolox/vim-session.git'
" Auto save the session
let g:session_autosave = 'yes'
" we don't autoload session
let g:session_autoload = 'no'
" Uses :
" 	:SaveSession <name>
" 	:OpenSession <name>
" 	:CloseSession <name>
" 	:DeleteSession <name>


" Vim-Fugitive
" Git integration for nvim
Plug 'https://github.com/tpope/vim-fugitive.git'
" :Git [args] - executs ani git command
" :Gwrite - adds the current file to the staging area
" :Gread - reads the current file from the last commit
" :Gmore - renames the current file and oppens it 
" :Gcommit - commits the staging file
" :Gblame - shows on what commit every line was changed 
" % - is the current file 


" vim-terraform
" Terraform highlighting
Plug 'https://github.com/hashivim/vim-terraform.git'
let g:terraform_align=1
let g:terraform_fold_sections=1

" Python specific Jedi
Plug 'git@github.com:davidhalter/jedi-vim.git'

call plug#end()


""" Functions
" Relative and simple number lines
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

" Remapinc CTRL + W + (h, j, k, l) to CTRL +(h, j, k, l) 
" for controlling the windows
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
" Remaping comenzile pentru resizing Windows  
map <S-k> <C-W>+ 
map <S-j> <C-W>- 
map <S-h> <C-W>< 
map <S-l> <C-W>> 

" Mapping CTRL + n to toggle the number mapping
nnoremap <C-n> :call NumberToggle()<cr>
" Calling number mapping by default 
call NumberToggle()

" Remmap annoing commands
:command WQ wq
:command Wq wq
:command W w
:command Q q


" Disableing arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Nu mai e nevoie de a ne limita la 79 de caractere
" set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces When hitting TABs
set softtabstop=4 " insert/delete 4 spaces When hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftWidth'
set autoindent    " align the neW line indent with the previous line


""" Changing the colorscheme 

" colorscheme darkerdesert
set background=dark
colorscheme gruvbox

" spell checking
set spell
