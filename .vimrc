" Enable true color
if exists('+termguicolors') 
 let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
 let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
 set termguicolors
endif

if has('termguicolors')
  " Don't need this in xterm-256color, but do need it inside tmux.
  " (See `:h xterm-true-color`.)
  if &term =~# 'tmux-256color'
    let &t_8f="\e[38;2;%ld;%ld;%ldm"
    let &t_8b="\e[48;2;%ld;%ld;%ldm"
  endif
endif

" <Leader> by default is \\
" Changed it to be the space bar
let mapleader = " "

" Disable annoying beep sound
set vb

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Change the default arrow keys
"J is going UP
noremap j k
"K is going down
noremap k j
"H is going left
"L is going right

" Show line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ Path:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable filetype plugins
filetype plugin indent on

" Highlight cursor line underneath the cursor horizontally
set cursorline

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" While searching though a file incrementally highlight matching characters as you type
set incsearch

" Ignore capital letters during search
set ignorecase

" Use highlighting when doing a search
set hlsearch

" Show matching words during a search
set showmatch

" Do not save backup files
set nobackup

" If the current file type is HTML, set indentation to 4 spaces.
autocmd Filetype html setlocal tabstop=4 shiftwidth=4 expandtab

" Function to replace the text you are curently in
map <leader>ch [:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]

" increment numbers
map <leader>+ <C-a>
" decrement numbers
map <leader>- <C-x>

" Split window vertically
map  <leader>sv <C-w>v

" Split window horizontaly
map <leader>sh <C-w>s

" Make split window equal width & height
map <leader>se <C-w>=

" Close current split window
map <leader>sx :close<CR>

" Open a new tab
map <leader>ot :tabnew<CR>

" Close current tab
map <leader>ct :tabclose<CR>

" Go to next tab
map <leader>nt :tabn<CR>

" GO to previous tab
map <leader>pt :tabp<CR>


" Return to the last edit position when opening files.
augroup vimrcEx
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif
augroup END

" Enable Plugin Manager - vim-plug
call plug#begin('~/.vim/autoload')
Plug 'haishanh/night-owl.vim' "darkmode theme 
Plug 'macguirerintoul/night_owl_light.vim' "lightmode theme
Plug 'preservim/nerdtree' " file explorer
Plug 'ryanoasis/vim-devicons' " icons for NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " syntax highlighting to NERDTree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder for vim
Plug 'junegunn/fzf.vim' "fuzzy finder for vim
Plug 'chr4/nginx.vim'
Plug 'chr4/sslsecure.vim'
Plug 'lifepillar/vim-mucomplete'
call plug#end()

" For new plugins, you can just mention the Github username and repository, then
" Run :PlugInstall to install all plugins

" Set color scheme
set background=dark
colorscheme night-owl
"colorscheme night_owl_light

" To enable the lightline theme
"let g:lightline = { 'colorscheme': 'nightowl' }

" NERDTree Shortcuts

" Enable NERDTree to show all hidden files
let NERDTreeShowHidden=1

" Open and Clouse NERDTree
map <leader>e :NERDTreeToggle<CR>

" Move focus to NERDTree and back to file
map <leader>ew :NERDTreeFocus<CR>

" fzf Shortcuts

" search for files inside Vim
map <leader>s :Files<CR>
map <leader>f :FZF<CR>
map <leader>sa :Ag<CR>

"set completeopt+=menuone
"set completeopt+=noselect
