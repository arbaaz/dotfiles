inoremap jk <esc>

" Change some default Vim configs
" ===============================

set nocompatible " No need of compatibility with vi
set encoding=utf-8 " Necessary to show Unicode glyphs

" Enable Filetype magic
filetype on
filetype plugin on
filetype indent on

:let mapleader = ","         " Set Leader key to comma
syntax on                    " Turn on syntax highlighting
set hidden                   " Allow swapping buffers by just hiding them
set lazyredraw               " Don't update the display while executing macros
set showmode                 " Show current mode
set nowrap                   " Do not wrap text
set number                   " Show line numbers
set relativenumber           " Show relative line numbers
set hls                      " Highlight searches
set ic                       " Ignore case
set smartcase                " Use case when searching with cases
set incsearch                " Incremental search
set autoindent smartindent   " set smartindent
set ruler                    " Always show current position
set autoread                 " Autoread when a file is changed from the outside
set wildmenu                 " Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc  " Ignore compiled files
set laststatus=2             " Always show status line
set statusline=%f            " tail of the filename
set diffopt=filler,iwhite    " In diff mode, ignore whitespace changes
set directory=~/.vim/tmp     " Use global swap directory
set pastetoggle=<F3>         " Toggle paste mode while in insert mode with F12
set backspace=2              " Enable backspace in insert mode
set shell=/usr/local/bin/zsh " Can do with bash shell for vim
set t_ut=                    " Disable background color erase
set synmaxcol=300            " Don't syn-highlight characters after 300 columns
set nojoinspaces             " Use only 1 space after                           " . " when joining lines

" Use 2 spaces for tab
set tabstop=2
set shiftwidth=2
set expandtab

let g:nerdtree_tabs_open_on_console_startup = 0
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"map <C-n> :NERDTreeToggle<CR>
" Show symbols for tabs and trailing whitespace
set list!
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«

" Set dictionary
" So you can autocomplete from dictionary using <C-X><C-K>
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Use 256 colors when terminal allows
if $TERM =~ '256color'
  set t_Co=256
elseif $TERM =~ '^xterm$'
  set t_Co=256
endif

"Draw a dark grey ruler at 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=235

" Show line cursor in insert mode
" and block cursor in normal mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Disable error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" MOAR undo which persists
set undolevels=10000
if has("persistent_undo")
  set undodir=~/.vim/undo " Allow undos to persist even after a file is closed
  set undofile
endif

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Remove delay after pressing escape and clearing the visual selection
set timeoutlen=1000 ttimeoutlen=0

" Turn on spellcheck in markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

" Plugin config overrides
" =======================
if filereadable(expand("~/.vim/vimrc.plugin_overrides"))
  source ~/.vim/vimrc.plugin_overrides
endif

" Load plugins
" ============
if filereadable(expand("~/.vim/vimrc.bundles"))
  source ~/.vim/vimrc.bundles
endif


" Colors
" ======
set background=dark
let g:gruvbox_italic=0
colors gruvbox
"colors zenburn
"colors mustang
"colors molokai

" Some helper functions
" =====================
if filereadable(expand("~/.vim/vimrc.my_functions"))
  source ~/.vim/vimrc.my_functions
endif

" Custom maps and abbreviations
" =============================

" Save 3 days every 10 years
nnoremap <C-s> <Esc>:update<CR>
inoremap <C-s> <c-o>:update<CR>
nnoremap <Leader>q <Esc>:q<CR>
nnoremap <Leader>w <Esc>:w<CR>
nnoremap <Leader>x <Esc>:x<CR>

" Allow saving of files as sudo when I forget to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"Ctags should list all matching tags
noremap <C-]> g<C-]>

" Switch between the last two buffers
nnoremap <leader><leader> <c-^>

" Duplicate visual block
vnoremap <leader>d y'>p

" Easier buffer switching
nnoremap <Leader>l :ls<CR>:b
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>bq :bd<CR>

" Copy/Paste to/from clipboard
vmap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Toggle search highlights
nnoremap <Leader>/ :set hls!<CR>

" Tabularize shortcut
nnoremap <Leader>t :Tabularize /
nmap <Leader>a: :Tabularize /:\s<CR>
vmap <Leader>a: :Tabularize /:\s<CR>

" Fuzzy search all open buffers
" using C-/. Yes, C-/ !!!
nmap <unique> <c-_> :CtrlPLine<CR>

" Indent current block
nmap <unique> <leader>a ma=ip`a

" Quick 2 character search using easymotion
map s <Plug>(easymotion-s)
map s <Plug>(easymotion-s2)
map g/ <Plug>(easymotion-sn)

" Incremental search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Use tab to jump to closing/opening matches
nnoremap <tab> %

" Jump to end or beginning in insert mode
inoremap <C-Right> <esc>A
inoremap <C-Left> <esc>I

" Abbreviations
iabbr dbg require 'debugger'; debugger
iabbr pryy require 'pry'; binding.pry
iabbr sph require 'spec_helper'
iabbr rah require 'rails_helper'
iabbr ppp fprintf(stderr, "------%s:%d----\n", __FILE__, __LINE__);
"Cucumber regex abbrs
iabbr mq "([^"]*)"
iabbr st /^ "([^"]*)"  $/
iabbr log console.log('$')
" This is how I roll
" ==================
" nnoremap h :echo 'You\'re so two-thousand and late'<cr>
" nnoremap j :echo 'You\'re so two-thousand and late'<cr>
" nnoremap k :echo 'You\'re so two-thousand and late'<cr>"
" nnoremap l :echo 'You\'re so two-thousand and late'<cr>

" Kashyap's extra bindings for pairing
"imap jk <Esc>
"imap kj  <Esc>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0 
let g:ctrlp_max_depth = 40

let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>eh :vsplit $MYHOST<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

let g:user_emmet_install_global = 0
autocmd FileType html,css,erb EmmetInstall
let g:user_emmet_leader_key='<tab>'

"my key binding
onoremap p i(
onoremap b /return<cr>
"set rtp+=$HOME/OpenSource/open-github-commit.vim
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>
let g:VtrUseVtrMaps = 1
"let g:indent_highlight_disabled = 1
"let g:indent_highlight_bg_color = 245
set guifont=FiraCode-Light:h14
nnoremap <leader>. :CtrlPTag<cr>
map <Enter> o<ESC>

