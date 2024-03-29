" Default visual settings
set nocompatible " Tells Vim to ignore legacy Vi
set number " Displays line numbers
set path+=** " Search all subdirectories with find
set wildmenu " Display bar that lists all potentially matched files
set hlsearch " Enables highlighting when searching
set termguicolors " Fixes tmux colors when using colorscheme
syntax on " Sets default coloring

" Tabs / Indentation / White space
set expandtab " Converts tab character to spaces
set tabstop=2 " Reads a tab character as 2 spaces in visual mode
set softtabstop=2 " Writes and deletes tab characters as 2 spaces when in edit mode
set shiftwidth=2 " Converts '<' and '>' into to 2 spaces in visual mode
set autoindent " Auto indent new lines based on previous lines indent
autocmd BufWritePre * %s/\s\+$//e " Deletes trailing whitespace on :w save

" Vim window shortcut remapping
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>

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

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

" Utilities
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" Themes Catppucci
colorscheme catppuccin_mocha
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
set noshowmode

" Configure NERDTree
map <C-n> :NERDTreeToggle<CR>

" Fix clipboard settings
set clipboard=unnamed
set mouse=

" Highlight 80th Character
augroup vimrc_autocmds
  autocmd BufEnter,WinEnter * highlight ColorColumn ctermbg=DarkGray
  autocmd BufEnter,WinEnter * call matchadd('ColorColumn', '\%81v', 100)
augroup END
