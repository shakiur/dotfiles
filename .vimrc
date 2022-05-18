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
  Plug 'morhetz/gruvbox'
  Plug 'tomasr/molokai'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'rakr/vim-one'
  Plug 'sheerun/vim-polyglot'

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

" Utilities
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

" Themes
colorscheme one
set background=dark
call one#highlight('StatusLine','abb2bf','181a1f','none') " Fixes filepath highlight

let g:deoplete#enable_at_startup = 1

" Customize coc.vim settings
highlight Pmenu ctermbg=darkgray
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Configures vim-one theme within tmux
set t_8b=^[[48;2;%lu;%lu;%lum
set t_8f=^[[38;2;%lu;%lu;%lum

" Configure FZF
let g:fzf_layout = { 'down': '~20%' }

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
