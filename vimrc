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

"" Searching
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
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Python
autocmd FileType python set nosmartindent list shiftwidth=4 softtabstop=4
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
autocmd FileType python nmap ,8 :call Pep8()<CR>
"" auto-remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e

" Ruby
autocmd FileType ruby set expandtab shiftwidth=2 softtabstop=2
autocmd FileType yaml set expandtab shiftwidth=2 softtabstop=2

" Javascript / HTML / CSS
autocmd FileType javascript set expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"" auto-remove trailing whitespace
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.jsx :%s/\s\+$//e
autocmd FileType html SoftTab 2
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css SoftTab 2
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END


" SnipMate? Not using it, maybe someday i will
"autocmd FileType python set ft=python.django " For SnipMate
"autocmd FileType html set ft=html.django_template " For SnipMate

" Custom filetypes
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
au BufRead,BufNewFile {*.less,*.sass} set ft=css
au BufRead,BufNewFile *.us set ft=html "our underscore.js html templates

" don't show binary files in list of files to open
set wildignore+=*.pyc,node_modules/**
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|compiled_site)$',
  \ 'file': '\v\.(exe|so|dll|pyc|yaml)$',
  \ }
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.db$' ]
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

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

" ctrl-J to split/break a line in normal mode
:nnoremap <NL> i<CR><ESC>

"""
""" Syntastic syntax checking 
"""
" status line
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_disable=['py']
let g:syntastic_enable_signs=0 "sign markings (at beginning of line, before line numbers)
let g:syntastic_enable_highlighting=2
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=1
" mode info
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['txt', 'go'] }
" key shortcuts
nmap <Ctrl>P ::CtrlPClearCache<CR>
nmap ,e :SyntasticCheck<CR> :Errors<CR>
nmap ,R :!!<CR>

" --- Vimux commands to run tests
let g:vimux_nose_setup_cmd="cd ~/code/mave/infrastructure; vagrant ssh"
let g:vimux_nose_options="--nologcapture"

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

" Disables swap files
set noswapfile
set nobackup
set nowb

" line wrapping
set wrap

" Keep undo history across sessions
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Binding ctrl+c / ctrl+v for osx clipboard
vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

" Highlight red any characters over the 80 character limit (Python)
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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

let pythoncmd = "python -c 'import os.path; print os.path.relpath(\"" . gitdir . "\")'"
let relgitdir = system(pythoncmd)[:-2]

" grep word under cursor
set grepprg=ack
nnoremap <leader>l :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
execute "nnoremap <leader>f :grep! \"\\b<C-R><C-W>\\b\" " . relgitdir . "<CR>:cw<CR>"

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
