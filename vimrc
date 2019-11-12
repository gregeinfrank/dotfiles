call plug#begin('~/.vim/plugged')

Plug 'Lokaltog/vim-easymotion'
Plug 'aghareza/vim-gitgrep'
Plug 'andymass/vim-matchup'
" Plug 'altercation/vim-colors-solarized'
Plug 'b4b4r07/vim-hcl'
Plug 'bogado/file-line'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dcosson/vimux-nose-test2'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
" Plug 'flowtype/vim-flow'
Plug 'galooshi/vim-import-js' " First you need to `npm install -g import-js`
Plug 'gregeinfrank/tomorrow-night-dcosson.vim'
Plug 'JamshedVesuna/vim-markdown-preview' " Reqires `brew install grip`
Plug 'jlanzarotta/bufexplorer'
Plug '/usr/local/opt/fzf' " first you need to `brew install fzf`
Plug 'junegunn/fzf.vim'
" Plug 'kana/vim-textobj-user' " Required for vim-textobj-rubyblock
Plug 'maximbaz/lightline-ale'
Plug 'milkypostman/vim-togglelist'
Plug 'mxw/vim-jsx'
" Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'nvie/vim-flake8'
Plug 'pangloss/vim-javascript'
Plug 'pgr0ss/vimux-ruby-test'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'rdolgushin/groovy.vim'
Plug 'rhysd/vim-fixjson'
Plug 'roxma/vim-hug-neovim-rpc' " For deoplete
Plug 'roxma/nvim-yarp' " For deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'ruanyl/vim-gh-line'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
" Plug 'vim-airline/vim-airline'
Plug 'wellle/tmux-complete.vim'
Plug 'w0rp/ale'


" new - experimental
Plug 'sjl/gundo.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'


let g:gh_trace = 1
let g:gh_open_command = 'open '


let g:deoplete#enable_at_startup = 1
let g:tmuxcomplete#trigger = 'omnifunc'

let g:gundo_width = 50
let g:gundo_preview_height = 15
let g:gundo_right = 0
let g:gundo_preview_bottom = 1

let g:matchup_matchparen_status_offscreen = 1
let g:matchup_transmute_enabled = 1

" " Required for vim-textobj-rubyblock
" runtime macros/matchit.vim
" From https://github.com/nelstrom/vim-textobj-rubyblock:
" It is also essential that you enable filetype plugins, and disable Vi compatible mode. Placing these lines in your vimrc file will do this:
set nocompatible
if has("autocmd")
  filetype indent plugin on
endif

colorscheme tomorrow-night-dcosson

"Simple switching between hard tabs and spaces
command! -nargs=* HardTab setlocal noexpandtab shiftwidth=4
command! -nargs=? SoftTab setlocal expandtab tabstop=<args> shiftwidth=<args> softtabstop=<args>

command! PrettyJSON %!python -m json.tool

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

" lightline *****************************************************************
set laststatus=2 " Show filename at bottom of buffer
let g:lightline = {}
let g:lightline.colorscheme = 'wombat'
let g:lightline.active = {}
let g:lightline.active.left = [ ['mode', 'paste'], [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
let g:lightline.component_function = { 'gitbranch': 'fugitive#head' }
      " \ 'colorscheme': 'wombat',
      " \ 'active': {
      " \   'left': [ [ 'mode', 'paste' ],
      " \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      " \ },
      " \ 'component_function': {
      " \   'gitbranch': 'fugitive#head'
      " \ },
      " \ }
 let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active.right = [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]]
" lightline *****************************************************************


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

" Groovy
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy

" " Javascript / HTML / CSS
" autocmd FileType javascript set expandtab shiftwidth=2 softtabstop=2
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
let g:colorizer_auto_color = 0 " Auto-color hex strings
let g:colorizer_auto_filetype='scss,css,html,json,javascript,js,erb'
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

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)
nnoremap K :Find <C-R><C-W><CR>


" easy motion
map W <Plug>(easymotion-w)
map B <Plug>(easymotion-b)
map S <Plug>(easymotion-s)

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
nmap ,c ggVG"*y
" copy word to clipboard
nmap ,d "*yiw
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

" Jump to ending brace/bracket/paren
nnoremap <ENTER> $%
" Allow <ENTER> to do it's thing in quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Jump to opening brace/bracket/paren
nnoremap <BS> ^%

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
let g:ale_change_sign_column_color = 0 " makes the whole left column red when there are errors
" let g:ale_sign_warning = '✋'
let g:ale_sign_warning = 'W'
" let g:ale_sign_error = '🚫'
let g:ale_sign_error = 'E'
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

" Fixer options
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier', 'remove_trailing_lines'],
\   'ruby': ['rubocop', 'remove_trailing_lines'],
\}
" \   'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'isort', 'yapf'],
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'

nnoremap <leader>a :ALENextWrap<CR>

" language-specific options

" This is for using `prettier`
" let g:ale_javascript_prettier_options = ' --config $CODEZ/asana2/.prettierrc '
" This is for using `prettier_d`
" let g:ale_javascript_prettier_options = ' --pkg-conf --fallback '

" let g:ale_javascript_prettier_executable = '/usr/local/bin/prettier'
let g:ale_javascript_flow_executable = './dev-scripts/flow-proxy.sh'
" let g:ale_ruby_rubocop_options = ' -P '

let g:flow#enabled = 0
let g:flow#timeout = 8
let g:flow#flowpath = "/Users/greegles/code/fin-core-beta/node_modules/.bin/flow"
let g:flow#autoclose = 1


" key shortcuts
" nmap <Ctrl>P ::CtrlPClearCache<CR>
" Map ctrl + p to fzf fuzzy matcher
nmap <C-p> :FZF<cr>
nmap ,R :!!<CR>
autocmd FileType ruby :nnoremap ,b obinding.pry<ESC>
autocmd FileType ruby :nnoremap \b obinding.pry<ESC>
autocmd FileType javascript :nnoremap ,b o/* eslint-disable */<ENTER>debugger;<ENTER>/* eslint-enable */<ESC>
autocmd FileType javascript :nnoremap \b o/* eslint-disable */<ENTER>debugger;<ENTER>/* eslint-enable */<ESC>

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

" ↓ use jest runner:
autocmd FileType javascript map <buffer> <Leader>rl :call VimuxRunCommand("clear; ./dev-scripts/jest-run-focused-test.sh " . expand("%.") . ":" . line("."))<CR>

" xvfb-run $NODE_PATH/karma/bin/karma start --single-run=false
autocmd FileType javascript map <Leader>ra :call VimuxRunCommand("clear; ./node_modules/karma/bin/karma run -- --grep=")<CR>
" ↓ use jest runner:
autocmd FileType javascript map <buffer> <Leader>rb :call VimuxRunCommand("clear; ./dev-scripts/jest-run-focused-test.sh " . expand("%."))<CR>

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

" See: https://medium.com/usevim/powerline-escape-fix-e849fd07aad0
" make Esc happen without waiting for timeoutlen
" fixes Powerline delay
augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
augroup END

" quick profiling for when vim is slow
function! ProfileStart()
  let s:profilestart = 'profile start vim-profile-' . strftime("%y-%m-%d-%H%M%S") . '.log'
  exec s:profilestart
  profile func *
  profile file *
endfunction

function! ProfileEnd()
  profile pause
  noautocmd qall!
endfunction

command! -nargs=0 ProfileStart :call ProfileStart()
command! -nargs=0 ProfileEnd :call ProfileEnd()

let loaded_matchparen = 0

