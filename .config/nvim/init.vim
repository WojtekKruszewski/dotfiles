" vim:fdm=marker
" Vundle "{{{
set nocompatible              " be iMproved, required
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'morhetz/gruvbox'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'noahfrederick/vim-hemisu'
" Plugin 'chriskempson/vim-tomorrow-theme'
" Plugin 'chriskempson/base16-vim'

" Plugin 'vim-scripts/ZoomWin'
Plugin 'mileszs/ack.vim'
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'
" Plugin 'skalnik/vim-vroom'
" Plugin 'janx/vim-rubytest'
" Plugin 'kassio/neoterm'
Plugin 'janko-m/vim-test'


" Plugin 'tpope/vim-haml'
" Plugin 'tpope/vim-projectionist'
" Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-rails'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'Chiel92/vim-autoformat'
" Plugin 'embear/vim-localvimrc'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'whatyouhide/vim-textobj-erb'
Plugin 'whatyouhide/vim-textobj-xmlattr'
" Plugin 'tpope/vim-endwise'
" Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
" Plugin 'jiangmiao/auto-pairs'
" Plugin 'Townk/vim-autoclose'
" Plugin 'vim-scripts/closetag.vim'
" Plugin 'digitaltoad/vim-jade'
" Plugin 'slim-template/vim-slim'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'isRuslan/vim-es6'
Plugin 'othree/yajs.vim'
" Plugin 'matze/vim-move'
" Plugin 'vim-scripts/vim-auto-save'
" Plugin 'vim-scripts/PreserveNoEOL'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'jtratner/vim-flavored-markdown'
" Plugin 'mrtazz/simplenote.vim'
" Plugin 'vitalk/vim-simple-todo'
" Plugin 'vim-scripts/BufOnly.vim'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'
" Plugin 'powerman/vim-plugin-autosess'

call vundle#end()
 filetype plugin on
"}}}
" Basic VIM settings "{{{
set viminfo+=n~/.config/nvim/nviminfo
set nocompatible
set hidden
set synmaxcol=400 " http://stackoverflow.com/questions/901313/editing-xml-files-with-long-lines-is-really-slow-in-vim-what-can-i-do-to-fix-th
set clipboard=unnamed
set number
set ruler
set encoding=utf-8
set viminfo+=n~/.config/nvim/nviminfo

set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set laststatus=2

set nobackup                      " Don't make a backup before overwriting a file.
set noswapfile                    " Disable swap file
set nowritebackup                 " And again.
set backupdir=/tmp/nvim
set directory=/tmp/nvim
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set grepprg=ag\ --nogroup\ --nocolor

" set nofixeol

" set cursorline                    " Line highlight
set listchars=tab:\ \ ,trail:\ 
set list!
map Q <Nop>
map K <Nop>

set noesckeys " http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line

" set foldmethod=syntax
" set foldlevel=100
set nofoldenable

autocmd VimResized * wincmd =
"}}}
" File types "{{{
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set showbreak=↪
set autoindent
"}}}
" Theme {{{
" colorscheme solarized
" colorscheme tomorrow
if has("+termguicolors")
  set termguicolors
endif
let g:gruvbox_italic=1
let g:gruvbox_bold=1
let g:gruvbox_contrast_light='hard'
colorscheme gruvbox
set background=light

if $ITERM_PROFILE == 'dark'
  set background=dark
endif

" command Light     colorscheme tomorrow  | set background=light | hi Normal ctermbg=none | ! ~/bin/profile Default
" command Solarized colorscheme solarized | set background=light |                          ! ~/bin/profile Solarized
" command Dark      colorscheme solarized | set background=dark  | hi Normal ctermbg=none | ! ~/bin/profile Dark

" comments italic
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

"}}}
" Shortcuts {{{
let mapleader=","

inoremap jk <ESC>

nnoremap <Leader>d :redraw!<CR>
nnoremap <Leader>g :term tig status<CR>
" nnoremap <Leader>n :NERDTreeToggle<CR>
" nnoremap <Leader>c :TlistToggle<CR>

" Some easier file saving:
nnoremap <C-S> :w<CR>
inoremap <C-S> <Esc>:w<CR>

" Move around splits with <c-hjkl>
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

nnoremap <Leader>1 1gt<CR>
nnoremap <Leader>2 2gt<CR>
nnoremap <Leader>3 3gt<CR>
nnoremap <Leader>4 4gt<CR>
nnoremap <Leader>5 5gt<CR>
nnoremap <Leader>6 6gt<CR>

nnoremap <c-t>n :tabnew<CR>
nnoremap <c-t>c :tabclose<CR>

nnoremap <Leader>. :A<CR>

" nnoremap <Leader>x :s/^\(\s*\)-\ /\1x /<CR>
" nnoremap <Leader>u :s/^\(\s*\)x\ /\1- /<CR>
" vnoremap <Leader>x :s/^\(\s*\)-\ /\1x /<CR>
" vnoremap <Leader>u :s/^\(\s*\)x\ /\1- /<CR>

function! RefreshChrome()
  exec 'silent !~/bin/refresh_chrome &'
  exec 'redraw!'
endfunction
function! RefreshCanary()
  exec 'silent !~/bin/refresh_canary &'
  exec 'redraw!'
endfunction
function! RefreshFirefox()
  exec 'silent !~/bin/refresh_firefox &'
  exec 'redraw!'
endfunction
nnoremap <Leader>f :call RefreshFirefox()<CR>
nnoremap <Leader>h :call RefreshChrome()<CR>
nnoremap <Leader>c :call RefreshCanary()<CR>

" copy file path to clipboard

map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>R :call RunNearestSpec()<CR>
map <Leader>e :call RunLastSpec()<CR>
let g:rspec_command = "! spring rspec {spec}"

let test#strategy = "neovim"
" let test#ruby#minitest#options = '-r" byebug"'
" let test#ruby#bundle_exec = 1
nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>s :TestSuite<CR>
nmap <silent> <leader>y :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>

" https://github.com/dapplebeforedawn/vim-rspec-quickfix
" map <leader>r :lgete system('make-rspec --format progress ' . expand("%")) \| lwindow \| lopen<CR>
" map <leader>r :cgete system('make-rspec --format progress ' . expand("%")) \| cwindow \| copen<CR>
" map <leader>R :call system('make-rspec --format progress --out test.out --format progress ' . expand("%")) \| lgetfile test.out \| lopen<CR>

"}}}

" Plugin: terminal "{{{
if exists(':terminal')
  let g:terminal_scrollback_buffer_size = 100000
  tnoremap <C-g> <C-\><C-n>
  tnoremap <C-J> <C-\><C-n><C-W>j
  tnoremap <C-K> <C-\><C-n><C-W>k
  tnoremap <C-H> <C-\><C-n><C-W>h
  tnoremap <C-L> <C-\><C-n><C-W>l

  " go into insert mode when entering the terminal
  " au WinEnter term://* startinsert
endif

"
" Plugin: vim-move "{{{
let g:move_map_keys = 0
vmap <c-j> <Plug>MoveBlockDown
vmap <c-k> <Plug>MoveBlockUp
"}}}
" Plugin: Emmet "{{{
let g:user_emmet_mode='inv'
"}}}
" Plugin: vim-rails "{{{
" nnoremap <Leader>R :w <bar> :.Rake<CR>
" nnoremap <Leader>r :w <bar> :Rake<CR>
" nnoremap <Leader>e :Rake -<CR>
"
" nnoremap <Leader>. :A<CR>

" nnoremap <Leader>T :.Rake<CR>
" nnoremap <Leader>t :! rails test %<CR>
" nnoremap <Leader>x :! %<CR>
" nnoremap <Leader>s :! rails r %<CR>

let g:rails_projections = {
      \ "test/models/*_test.rb": {"command": "modeltest"}
      \ }

"}}}
" Plugin: FZF "{{{
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" set rtp+=/usr/local/Cellar/fzf/0.10.8/
nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>b :Buffers<CR>
" nnoremap <Leader>l :Lines<CR>
nnoremap <Leader>w :Windows<CR>
nnoremap <c-p> :FZF<CR>

"}}}
" Plugin: CtrlP "{{{
" nnoremap <c-p> :CtrlPMixed<CR>
" nnoremap <Leader>p :CtrlPMixed<CR>
" nnoremap <Leader>a :CtrlPTag<CR>
" nnoremap <Leader>w :CtrlPCurWD<CR>
" nnoremap <Leader>b :CtrlPBuffer<CR>
"
" set tags+=gems.tags
"
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
"
" let g:ctrlp_working_path_mode = 'rac'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_use_caching = 1
"
" let g:ctrlp_clear_cache_on_exit = 1
" let g:ctrlp_prompt_mappings = {'ToggleRegex()': [], 'PrtClearCache()': ['<c-r>'] }
"
" let g:ctrlp_follow_symlinks = 2
" let g:ctrlp_show_hidden = 0
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/](tmp|log|node_modules|target|dist|vendor\/cache)|(\.(swp|ico|hg|git|svn))$',
"   \ 'file': '\v(\.so$|\.dat$|\.DS_Store$)|(\.(png|jpg|jpeg|gif|ttf|woff|svg|eot|ico)$)'
"   \ }
"}}}
" Restore current position "{{{
" From http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
"
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

" Plugin: local vimrc "{{{
let g:localvimrc_persistent = 1
let g:localvimrc_persistence_file = "/Users/wojtek/.vim/localvimrc_persistent"
let s:localvimrc_persistence_file = "/Users/wojtek/.vim/localvimrc_persistent"
let g:localvimrc_sandbox = 0
" }}
" Plugin: vim-markdown "{{{
let g:vim_markdown_new_list_item_indent = 0
" }}}
" Plugin: xolox/vim-session "{{{
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 0
let g:session_autosave_silent = 1
" }}}
