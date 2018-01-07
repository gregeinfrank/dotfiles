" Pathogen
set nocompatible
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
filetype on
syntax enable
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_contrast='high'
" let g:solarized_visibility='normal'
" set background=dark
" colorscheme solarized
" colorscheme Tomorrow-Night

call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion'
Plug 'aghareza/vim-gitgrep'
Plug 'altercation/vim-colors-solarized'
Plug 'b4b4r07/vim-hcl'
Plug 'bogado/file-line'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dcosson/vim-powerline'
Plug 'dcosson/vimux-nose-test2'
" Plug 'flowtype/vim-flow'
Plug 'gregeinfrank/tomorrow-night-dcosson.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/fzf.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'mxw/vim-jsx'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'pgr0ss/vimux-ruby-test'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'rdolgushin/groovy.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'

call plug#end()

colorscheme tomorrow-night-dcosson

"Simple switching between hard tabs and spaces
command! -nargs=* HardTab setlocal noexpandtab shiftwidth=4
command! -nargs=? SoftTab setlocal expandtab tabstop=<args> shiftwidth=<args> softtabstop=<args>

set hidden " allow leaving buffer with outstanding changes
set number
set et
set sw=4
set smarttab
" set smartindent
set cursorline
" set cursorcolumn
set title
set ruler
set showmode
set showcmd
set ai " Automatically set the indent of a new line (local to buffer)
set tags=./tags;

"" searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital

set equalalways " Multiple windows, when created, are equal in size
set splitbelow splitright

set mouse=a  " enable scroll with mouse wheel

let mapleader=","

" Powerline status line
let g:Powerline_symbols = 'fancy'
let g:Powerline_colorscheme = 'default'
let g:Powerline_stl_path_style = 'short'
set t_Co=256
set laststatus=2 "show even if window not split
" set statusline=%F%m%r%h%w\ \ \ [TYPE=%Y]\ \ \ [POS=%l,%v][%p%%]" [FORMAT=%{&ff}] %{strftime(\"%d/%m/%y\ -\ %H:%M\")} %F%m%r%h%w

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" cursorline only in active buffer
" augroup CursorLine
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
" augroup END

" Python
autocmd FileType python set nosmartindent list shiftwidth=4 softtabstop=4
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python nmap ,8 :call Flake8()<CR>

"" auto-remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e

" Ruby
autocmd FileType ruby set expandtab shiftwidth=2 softtabstop=2
autocmd FileType ruby set nocursorline
autocmd FileType ruby set regexpengine=1
autocmd FileType ruby set re=1

autocmd FileType yaml set expandtab shiftwidth=2 softtabstop=2

" " Javascript / HTML / CSS
" autocmd FileType javascript set expandtab shiftwidth=2 softtabstop=2
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

"" auto-remove trailing whitespace
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.jsx :%s/\s\+$//e
autocmd FileType html SoftTab 2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css SoftTab 2
autocmd FileType scss SoftTab 2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" SnipMate? Not using it, maybe someday i will
"autocmd FileType python set ft=python.django " For SnipMate
"autocmd FileType html set ft=html.django_template " For SnipMate

" Custom filetypes
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
au BufRead,BufNewFile {*.less,*.sass} set ft=css
au BufRead,BufNewFile *.us set ft=html "our underscore.js html templates
au BufRead,BufNewFile {*.tfstate,*.tfstate.backup} set ft=json

" vim-javascript syntax highlighting
let g:javascript_plugin_flow = 1

" https://github.com/junegunn/fzf
" insalled via git
set rtp+=~/.fzf
" fzf.vim
nmap <C-t> :Tags<CR>
" nmap <C-[> :Tags<CR>
" nmap <Leader>t :execute "Tags " expand('<cword>')<CR>

" ctags
" need to brew install ctags
nmap <Leader>cc :!(test -f ./ctags.sh && ./ctags.sh) \|\|  (test -f ./bin/ctags.sh && ./bin/ctags.sh) \|\| echo 'no ./ctags.sh or ./bin/ctags.sh found'<CR>

" Not using ctrlp anymore - but might want to add these to fzf ignore
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/](\.git|node_modules|compiled_site|dist)$',
"   \ 'file': '\v\.(exe|so|dll|pyc|yaml)$',
"   \ }

" don't show binary files in list of files to open
set wildignore+=*.pyc,node_modules/**
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.db$' ]
autocmd StdinReadPre * let s:std_in=1

" Auto-open nerdtree if no file was selected
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" fix backspace in vim 7
:set backspace=indent,eol,start

""" Clipboard
" copy all to clipboard
nmap ,a ggVG"*y
" copy word to clipboard
nmap ,d "*yiw
" copy highlighted to clipboard
vmap ,c "*y
" paste 
nmap ,v :set paste<CR>"*p:set nopaste<CR>
" underline current line, markdown style
nmap ,u "zyy"zp:.s/./-/g<CR>:let @/ = ""<CR>

" delete inner xml tag
nmap ,dit dt<dT>
nmap ,cit dt<cT>
"
"clear the fucking search buffer, not just remove the highlight
map \c :let @/ = ""<CR>

" Revert the current buffer
nnoremap \r :e!<CR>

"Easy edit of vimrc
nmap \s :source $MYVIMRC<CR>
nmap \v :e $MYVIMRC<CR>

" :runtime! ~/.vim/

" w!! to write with sudo
cnoreabbrev <expr> w!!
    \((getcmdtype() == ':' && getcmdline() == 'w!!')
    \?('!sudo tee % >/dev/null'):('w!!'))

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Open useful sidebars (taglist, nerdtree)
nnoremap ,w :NERDTreeToggle<CR>
nnoremap ,nf :NERDTreeFind<CR>

"""
""" Abolish
"""
au bufenter * Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
au bufenter * Abolish {ocur}ence{s,} {occurr}ence{}
au bufenter * Abolish {dashbao}rd {dashboa}rd
au bufenter * Abolish {privel}ege {privil}ege
au bufenter * Abolish reduct{ino} reduct{ion}
au bufenter * Abolish {respno}se {respon}se
au bufenter * Abolish {resposn}e {respons}e
" au bufenter * Abolish *{search}* *{search}*
" au bufenter *.rb :%S/saerch/search/g
" au bufenter *.js :%S/saerch/search/g


"""
""" ALE syntax checking
"""
let g:ale_enabled = 1
" visual options
let g:ale_sign_column_always = 1
let g:ale_sign_warning = '✋'
let g:ale_sign_error = '🚫'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Linting options
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\   'jsx': ['eslint', 'flow'],
\   'python': ['flake8'],
\   'ruby': ['ruby', 'rubocop'],
\   'hcl': [],
\}
" Only lint on save or when switching back to normal mode, not every keystroke in insert mode
let g:ale_lint_on_text_changed = 'normal'

" Fixer options
let g:ale_fixers = {
\   'javascript': ['prettier', 'remove_trailing_lines'],
\   'ruby': ['rubocop', 'remove_trailing_lines'],
\}
let g:ale_fix_on_save = 1

" language-specific options
let g:ale_javascript_prettier_options = ' --parser babylon --single-quote --jsx-bracket-same-line --trailing-comma es5 --print-width 100'
let g:ale_javascript_flow_executable = './dev-scripts/flow-proxy.sh'
let g:ale_ruby_rubocop_options = ' -P '

" key shortcuts
" nmap <Ctrl>P ::CtrlPClearCache<CR>
" Map ctrl + p to fzf fuzzy matcher
nmap <C-p> :FZF<cr>
nmap ,R :!!<CR>
autocmd FileType ruby :nnoremap ,b obinding.pry<ESC>

" --- Vimux commands to run tests
let g:vimux_nose_setup_cmd="cd ~/code/fin/fin-core-beta; dockizzle"
let g:vimux_nose_options="--nologcapture"
let g:vimux_ruby_cmd_unit_test = "rspec"
let g:vimux_ruby_file_relative_paths = 1

map <Leader>rs :call VimuxRunNoseSetup()<CR>
map <Leader>ri :call VimuxInspectRunner()<CR>
map <Leader>rc :call VimuxCloseRunner()<CR>
map <Leader>rr :call VimuxRunLastCommand()<CR>

autocmd FileType python map <Leader>ra :call VimuxRunNoseAll()<CR>
autocmd FileType python map <Leader>rF :call VimuxRunNoseFile()<CR>
autocmd FileType python map <Leader>rf :call VimuxRunNoseLine()<CR>

autocmd FileType ruby  map <Leader>ra :call VimuxRunCommand("rspec")<CR>
autocmd FileType ruby  map <Leader>rF :RunAllRubyTests<CR>
autocmd FileType ruby  map <Leader>rf :RunRubyFocusedTest<CR>
autocmd FileType ruby  map <Leader>rl :call VimuxRunCommand("clear; RSPEC_CLEAN_WITH_DELETION=1 RSPEC_TRUNCATE_AFTER_SUITE=1 RSPEC_SKIP_ELASTICsearch_SETUP=1 ./bin/rspec " . expand("%.") . ":" . line("."))<CR>

autocmd FileType javascript map <Leader>rf :call VimuxRunCommand("clear; ./dev-scripts/karma-run-line-number.sh " . expand("%.") . ":" . line("."))<CR>
autocmd FileType javascript map <Leader>ra :call VimuxRunCommand("clear; ./node_modules/karma/bin/karma run -- --grep=")<CR>
" xvfb-run $NODE_PATH/karma/bin/karma start --single-run=false

" Disables swap files
set noswapfile
set nobackup
set nowb
set nowritebackup

" line wrapping
set wrap

" Keep undo history across sessions
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Binding ctrl+c / ctrl+v for osx clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" Highlight red any characters over the 80 character limit (Python)
"highlight OverLength ctermbg=grey ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Jedi
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#popup_on_dot = 0
let g:jedi#completions_enabled = 0

let gitdir=system("git rev-parse --show-toplevel")
if empty(gitdir)
    " not a git repo
    let gitdir = "."
else
    " remove \r\n
    let gitdir = gitdir[:-2]
endif

" let pythoncmd = "python -c 'import os.path; print os.path.relpath(\"" . gitdir . "\")'"
" let relgitdir = system(pythoncmd)[:-2]

" grep word under cursor
" set grepprg=ack
" nnoremap <leader>l :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" execute "nnoremap <leader>f :grep! \"\\b<C-R><C-W>\\b\" " . relgitdir . "<CR>:cw<CR>"

" python-mode (pymode)
let g:pymode_folding = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 1
let g:pymode_options_max_line_length = 80
let g:pymode_lint_options_pep8 = 
    \ {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_breakpoint_cmd = "import ipdb; ipdb.set_trace()  # XXX BREAKPOINT"
let g:pymode_quickfix_minheight = 1
let g:pymode_quickfix_maxheight = 2
let g:pymode_lint_cwindow = 0
let g:pymode_indent = 0
let g:pymode_run = 0 " Turn off <leader>r for running python 

" bind \ (backward slash) to grep shortcut
" command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" execute "nnoremap \\ :Ag  " . relgitdir . "<C-Left><left>"

"" Smooth scrolling (http://stackoverflow.com/questions/4064651)
noremap <expr> <C-u> repeat("\<C-y>", 20)
noremap <expr> <C-d> repeat("\<C-e>", 20)
set so=7

au BufRead *.spt set ft=python
