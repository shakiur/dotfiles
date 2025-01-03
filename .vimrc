" Default visual settings
set nocompatible " Tells Vim to ignore legacy Vi
set number " Displays line numbers
set path+=** " Search all subdirectories with find
set wildmenu " Display bar that lists all potentially matched files
set hlsearch " Enables highlighting when searching
set termguicolors " Fixes tmux colors when using colorscheme
set regexpengine=0 " Fixes jsx and tsk delay
set noswapfile " Gets rid of .swp files
set cursorline " Highlights horizontal line
syntax on " Sets default coloring

" Tabs / Indentation / White space
set expandtab " Converts tab character to spaces
set tabstop=2 " Reads a tab character as 2 spaces in visual mode
set softtabstop=2 " Writes and deletes tab characters as 2 spaces when in edit mode
set shiftwidth=2 " Converts '<' and '>' into to 2 spaces in visual mode
set autoindent " Auto indent new lines based on previous lines indent
autocmd BufWritePre * %s/\s\+$//e " Deletes trailing whitespace on :w save

" Traverse window splits
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>

" Resize windows
" Hortizontal Resize - Equal(=) Minus(-)
" Hortizontal Resize - Equal(=) Minus(-)
noremap = :vertical res +1<CR>
noremap - :vertical res -1<CR>
" Vertical Resize - Plus(+) Underscore(_)
" Vertical Resize - Plus(+) Underscore(_)
noremap + :res +1<CR>
noremap _ :res -1<CR>

" Type :CopyCWD to copy current directory
command! CopyCWD let @+ = getcwd()

" Plugins
set rtp+=/usr/local/opt/fzf " Enables the FZF plugin

" Vim-Plug
" Install: :PlugInstall
call plug#begin('~/.vim/plugged') " Searches vim-plugged directory
" Themes
  Plug 'joshdick/onedark.vim'
  Plug 'rakr/vim-one'
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
  Plug 'itchyny/lightline.vim'

" Utilities
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dense-analysis/ale'
  " Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Disable ALE enable by :ALEToggle
let g:ale_enabled=0
let g:ale_linters = {
\   'ruby': ['rubocop'],
\}

" let g:coc_global_extensions = [
" \  'coc-tsserver',
" \  'coc-json',
" \]

let g:coc_node_path = '/Users/shakiurrahman/.asdf/installs/nodejs/14.21.3/bin/node'

" Themes Catppucci
colorscheme catppuccin_mocha
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
set noshowmode

" Configure NERDTree
map <C-n> :NERDTreeToggle<CR>

" Fix clipboard settings
set clipboard=unnamed

" Mouse scroll and drag panes
set mouse=n
set ttymouse=xterm2

" Highlight 80th Character
augroup vimrc_autocmds
  autocmd BufEnter,WinEnter * highlight ColorColumn ctermbg=DarkGray
  autocmd BufEnter,WinEnter * call matchadd('ColorColumn', '\%81v', 100)
augroup END
