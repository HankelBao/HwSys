let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplete_auto_refresh) =neocomplete#mappings#refresh()
inoremap <silent> <Plug>(neocomplete_start_manual_complete) =neocomplete#mappings#manual_complete()
inoremap <silent> <Plug>(neocomplete_start_auto_complete) =neocomplete#mappings#auto_complete()
inoremap <silent> <Plug>(neocomplete_start_omni_complete) 
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_quick_match) unite#sources#neocomplete#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplete_start_unite_complete) unite#sources#neocomplete#start_complete()
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path("ag -l -g ''")
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
inoremap <silent> <expr> <Plug>delimitMateS-BS delimitMate#WithinEmptyPair() ? "\<Del>" : "\<S-BS>"
inoremap <silent> <Plug>delimitMateBS =delimitMate#BS()
inoremap <expr> <BS> neocomplete#smart_close_popup()."\"
xmap  <Plug>SpeedDatingUp
nmap  <Plug>SpeedDatingUp
noremap  
map  <Plug>(ctrlp)
xmap  <Plug>SpeedDatingDown
nmap  <Plug>SpeedDatingDown
nmap  j <Plug>(CommandTJump)
nmap  t <Plug>(CommandT)
nmap  caL <Plug>CalendarH
nmap  cal <Plug>CalendarV
nmap <silent>  w y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <silent>  w t <Plug>VimwikiTabMakeDiaryNote
nmap <silent>  w w <Plug>VimwikiMakeDiaryNote
nmap <silent>  w i <Plug>VimwikiDiaryGenerateLinks
nmap <silent>  wi <Plug>VimwikiDiaryIndex
nmap <silent>  ws <Plug>VimwikiUISelect
nmap <silent>  wt <Plug>VimwikiTabIndex
nmap <silent>  ww <Plug>VimwikiIndex
noremap  wd :tabedit ~/vimwiki/Todo.wiki
noremap  tt !!date +\%F
noremap  whi :StripWhitespace
noremap  pa :lcd %:p:h
noremap  b :CtrlPBuffer
noremap  o :CtrlP
noremap  f :CtrlPMixed
noremap  9 :9wincmd w
noremap  8 :8wincmd w
noremap  7 :7wincmd w
noremap  6 :6wincmd w
noremap  5 :5wincmd w
noremap  4 :4wincmd w
noremap  3 :3wincmd w
noremap  2 :2wincmd w
noremap  1 :1wincmd w
map # <Plug>(incsearch-nohl-#)
map * <Plug>(incsearch-nohl-*)
vmap + <Plug>(expand_region_expand)
nmap + <Plug>(expand_region_expand)
noremap , :
map / <Plug>(incsearch-forward)
xmap ; <Plug>Sneak_;
omap ; <Plug>Sneak_;
nmap ; <Plug>Sneak_;
vnoremap < <gv
vnoremap > >gv
map ? <Plug>(incsearch-backward)
map N <Plug>(incsearch-nohl-N)
xmap S <Plug>VSurround
nmap S <Plug>Sneak_S
xmap Z <Plug>Sneak_S
omap Z <Plug>Sneak_S
nnoremap \fr :CtrlPMRU
nmap _ <Plug>(expand_region_shrink)
vmap _ <Plug>(expand_region_shrink)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap d <Plug>SpeedDatingNowLocal
nmap d <Plug>SpeedDatingNowUTC
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
map g# <Plug>(incsearch-nohl-g#)
map g* <Plug>(incsearch-nohl-g*)
map g/ <Plug>(incsearch-stay)
vmap j gj
nmap j gj
vmap k gk
nmap k gk
map n <Plug>(incsearch-nohl-n)
xmap s <Plug>Sneak_s
nmap s <Plug>Sneak_s
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
omap z <Plug>Sneak_s
nnoremap <Plug>(-fzf-vim-do) :execute g:__fzf_command
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <silent> <Plug>SpeedDatingNowUTC :call speeddating#timestamp(1,v:count)
nnoremap <silent> <Plug>SpeedDatingNowLocal :call speeddating#timestamp(0,v:count)
vnoremap <silent> <Plug>SpeedDatingDown :call speeddating#incrementvisual(-v:count1)
vnoremap <silent> <Plug>SpeedDatingUp :call speeddating#incrementvisual(v:count1)
nnoremap <silent> <Plug>SpeedDatingDown :call speeddating#increment(-v:count1)
nnoremap <silent> <Plug>SpeedDatingUp :call speeddating#increment(v:count1)
nnoremap <silent> <Plug>CalendarT :cal calendar#show(2)
nnoremap <silent> <Plug>CalendarH :cal calendar#show(1)
nnoremap <silent> <Plug>CalendarV :cal calendar#show(0)
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
omap <Plug>SneakPrevious <Plug>Sneak_,
omap <Plug>SneakNext <Plug>Sneak_;
xmap <Plug>SneakPrevious <Plug>Sneak_,
xmap <Plug>SneakNext <Plug>Sneak_;
nmap <Plug>SneakPrevious <Plug>Sneak_,
nmap <Plug>SneakNext <Plug>Sneak_;
omap <Plug>(SneakStreakBackward) <Plug>SneakLabel_S
omap <Plug>(SneakStreak) <Plug>SneakLabel_s
xmap <Plug>(SneakStreakBackward) <Plug>SneakLabel_S
xmap <Plug>(SneakStreak) <Plug>SneakLabel_s
nmap <Plug>(SneakStreakBackward) <Plug>SneakLabel_S
nmap <Plug>(SneakStreak) <Plug>SneakLabel_s
xmap <Plug>VSneakPrevious <Plug>Sneak_,
xmap <Plug>VSneakNext <Plug>Sneak_;
xmap <Plug>VSneakBackward <Plug>Sneak_S
xmap <Plug>VSneakForward <Plug>Sneak_s
nmap <Plug>SneakBackward <Plug>Sneak_S
nmap <Plug>SneakForward <Plug>Sneak_s
onoremap <silent> <Plug>SneakLabel_S :call sneak#wrap(v:operator, 2, 1, 2, 2)
onoremap <silent> <Plug>SneakLabel_s :call sneak#wrap(v:operator, 2, 0, 2, 2)
xnoremap <silent> <Plug>SneakLabel_S :call sneak#wrap(visualmode(), 2, 1, 2, 2)
xnoremap <silent> <Plug>SneakLabel_s :call sneak#wrap(visualmode(), 2, 0, 2, 2)
nnoremap <silent> <Plug>SneakLabel_S :call sneak#wrap('', 2, 1, 2, 2)
nnoremap <silent> <Plug>SneakLabel_s :call sneak#wrap('', 2, 0, 2, 2)
onoremap <silent> <Plug>Sneak_T :call sneak#wrap(v:operator, 1, 1, 0, 0)
onoremap <silent> <Plug>Sneak_t :call sneak#wrap(v:operator, 1, 0, 0, 0)
xnoremap <silent> <Plug>Sneak_T :call sneak#wrap(visualmode(), 1, 1, 0, 0)
xnoremap <silent> <Plug>Sneak_t :call sneak#wrap(visualmode(), 1, 0, 0, 0)
nnoremap <silent> <Plug>Sneak_T :call sneak#wrap('', 1, 1, 0, 0)
nnoremap <silent> <Plug>Sneak_t :call sneak#wrap('', 1, 0, 0, 0)
onoremap <silent> <Plug>Sneak_F :call sneak#wrap(v:operator, 1, 1, 1, 0)
onoremap <silent> <Plug>Sneak_f :call sneak#wrap(v:operator, 1, 0, 1, 0)
xnoremap <silent> <Plug>Sneak_F :call sneak#wrap(visualmode(), 1, 1, 1, 0)
xnoremap <silent> <Plug>Sneak_f :call sneak#wrap(visualmode(), 1, 0, 1, 0)
nnoremap <silent> <Plug>Sneak_F :call sneak#wrap('', 1, 1, 1, 0)
nnoremap <silent> <Plug>Sneak_f :call sneak#wrap('', 1, 0, 1, 0)
onoremap <silent> <Plug>Sneak_, :call sneak#rpt(v:operator, 1)
onoremap <silent> <Plug>Sneak_; :call sneak#rpt(v:operator, 0)
xnoremap <silent> <Plug>Sneak_, :call sneak#rpt(visualmode(), 1)
xnoremap <silent> <Plug>Sneak_; :call sneak#rpt(visualmode(), 0)
nnoremap <silent> <Plug>Sneak_, :call sneak#rpt('', 1)
nnoremap <silent> <Plug>Sneak_; :call sneak#rpt('', 0)
onoremap <silent> <Plug>SneakRepeat :call sneak#wrap(v:operator, sneak#util#getc(), sneak#util#getc(), sneak#util#getc(), sneak#util#getc())
onoremap <silent> <Plug>Sneak_S :call sneak#wrap(v:operator, 2, 1, 2, 1)
onoremap <silent> <Plug>Sneak_s :call sneak#wrap(v:operator, 2, 0, 2, 1)
xnoremap <silent> <Plug>Sneak_S :call sneak#wrap(visualmode(), 2, 1, 2, 1)
xnoremap <silent> <Plug>Sneak_s :call sneak#wrap(visualmode(), 2, 0, 2, 1)
nnoremap <silent> <Plug>Sneak_S :call sneak#wrap('', 2, 1, 2, 1)
nnoremap <silent> <Plug>Sneak_s :call sneak#wrap('', 2, 0, 2, 1)
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
noremap <Plug>(_incsearch-g#) g#
noremap <Plug>(_incsearch-g*) g*
noremap <Plug>(_incsearch-#) #
noremap <Plug>(_incsearch-*) *
noremap <expr> <Plug>(_incsearch-N) g:incsearch#consistent_n_direction && !v:searchforward ? 'n' : 'N'
noremap <expr> <Plug>(_incsearch-n) g:incsearch#consistent_n_direction && !v:searchforward ? 'N' : 'n'
map <Plug>(incsearch-nohl-g#) <Plug>(incsearch-nohl)<Plug>(_incsearch-g#)
map <Plug>(incsearch-nohl-g*) <Plug>(incsearch-nohl)<Plug>(_incsearch-g*)
map <Plug>(incsearch-nohl-#) <Plug>(incsearch-nohl)<Plug>(_incsearch-#)
map <Plug>(incsearch-nohl-*) <Plug>(incsearch-nohl)<Plug>(_incsearch-*)
map <Plug>(incsearch-nohl-N) <Plug>(incsearch-nohl)<Plug>(_incsearch-N)
map <Plug>(incsearch-nohl-n) <Plug>(incsearch-nohl)<Plug>(_incsearch-n)
noremap <expr> <Plug>(incsearch-nohl2) incsearch#autocmd#auto_nohlsearch(2)
noremap <expr> <Plug>(incsearch-nohl0) incsearch#autocmd#auto_nohlsearch(0)
noremap <expr> <Plug>(incsearch-nohl) incsearch#autocmd#auto_nohlsearch(1)
noremap <silent> <expr> <Plug>(incsearch-stay) incsearch#go({'command': '/', 'is_stay': 1})
noremap <silent> <expr> <Plug>(incsearch-backward) incsearch#go({'command': '?'})
noremap <silent> <expr> <Plug>(incsearch-forward) incsearch#go({'command': '/'})
inoremap  
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplete#undo_completion()
inoremap <expr>  neocomplete#smart_close_popup()."\"
inoremap <expr> 	 pumvisible() ? "\" : "\	"
inoremap <expr>  neocomplete#complete_common_string()
imap  <Plug>Isurround
inoremap ` 
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set complete=.,w,b,u,t
set completeopt=menuone,longest,preview
set display=lastline
set expandtab
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hidden
set history=10000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
set mouse=a
set pyxversion=3
set report=0
set ruler
set runtimepath=~/.vim,~/.vim/plugged/gruvbox/,~/.vim/plugged/papercolor-theme/,~/.vim/plugged/vim-airline/,~/.vim/plugged/vim-airline-themes/,~/.vim/plugged/vim-github-colorscheme/,~/.vim/plugged/vim/,~/.vim/plugged/asyncrun.vim/,~/.vim/plugged/incsearch.vim/,~/.vim/plugged/neocomplete.vim/,~/.vim/plugged/clang_complete/,~/.vim/plugged/ale/,~/.vim/plugged/delimitMate/,~/.vim/plugged/vim-sneak/,~/.vim/plugged/vim-expand-region/,~/.vim/plugged/vim-better-whitespace/,~/.vim/plugged/jedi-vim/,~/.vim/plugged/indentLine/,~/.vim/plugged/tabular/,~/.vim/plugged/vim-surround/,~/.vim/plugged/fcitx.vim/,~/.vim/plugged/vimwiki/,~/.vim/plugged/calendar-vim/,~/.vim/plugged/vim-speeddating/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/ag.vim/,~/.vim/plugged/ctrlp-py-matcher/,~/.vim/plugged/fzf.vim/,~/.vim/plugged/nerdtree/,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/plugged/ale/after,~/.vim/plugged/jedi-vim/after,~/.vim/plugged/indentLine/after,~/.vim/plugged/tabular/after,~/.vim/after,~/.vim/plugged/ale/after
set scrolloff=3
set shiftwidth=4
set showcmd
set showmatch
set smartcase
set smarttab
set softtabstop=4
set splitbelow
set splitright
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg
set tabstop=4
set termencoding=utf-8
set viminfo='100,<50,s10,h,!
set whichwrap=b,s,<,>,h,l
set wildignore=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip,*/tmp/*,*.o,*.obj,*.so,*\\tmp\\*,*.exe
set wildmenu
set wildmode=list:longest,full
set winminheight=0
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Workspace/HwSys
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Workspace/HwSys/3
badd +0 ~/Workspace/HwSys/testbot.py
argglobal
silent! argdel *
edit ~/Workspace/HwSys/testbot.py
set splitbelow splitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <S-Tab> <Plug>delimitMateS-Tab
imap <buffer> <S-BS> <Plug>delimitMateS-BS
inoremap <buffer> <expr> <C-Space> jedi#complete_string(0)
imap <buffer> <Nul> <C-Space>
vnoremap <buffer>  r :call jedi#rename_visual()
nnoremap <buffer>  r :call jedi#rename()
nnoremap <buffer>  n :call jedi#usages()
nnoremap <buffer>  g :call jedi#goto_assignments()
nnoremap <buffer>  d :call jedi#goto()
nnoremap <buffer> <silent> K :call jedi#show_documentation()
snoremap <buffer> <expr> <C-Space> 'c'.jedi#complete_string(0)
smap <buffer> <Nul> <C-Space>
imap <buffer> <silent> g <Plug>delimitMateJumpMany
inoremap <buffer> <silent>   =jedi#smart_auto_mappings()
imap <buffer> " <Plug>delimitMate"
imap <buffer> ' <Plug>delimitMate'
imap <buffer> ( <Plug>delimitMate(
imap <buffer> ) <Plug>delimitMate)
inoremap <buffer> <silent> . .=jedi#complete_string(1)
imap <buffer> [ <Plug>delimitMate[
imap <buffer> ] <Plug>delimitMate]
imap <buffer> { <Plug>delimitMate{
imap <buffer> } <Plug>delimitMate}
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'python'
setlocal filetype=python
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\(from\\|import\\)
setlocal includeexpr=substitute(v:fname,'\\.','/','g')
setlocal indentexpr=GetPythonIndent(v:lnum)
setlocal indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=pydoc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=pythoncomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=4
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.py
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'python'
setlocal syntax=python
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 6 - ((5 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=0 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
