:set number
:set ai
:set cursorline
:set expandtab
:set tabstop=4
:retab
:set shiftwidth=4
:set mouse=a
":set mousemodel=extend
:set history=100
:color Tomorrow-Night
:set splitbelow
:set splitright
:set scrolloff=9

:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz

:noremap h i
:noremap i k
:noremap k j
:noremap j h 

:inoremap {<CR> {<CR>}<Esc>ko

filetype indent on

:hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
:hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

if &diff
	colorscheme Tomorrow-Night
endif

for i in ['cterm', 'gui']
    for j in ['fg', 'bg']
        let c = synIDattr(hlID('Normal'), 'bg', i)
        if (!empty(c))
            exec 'highlight CarriageReturn ' . i . j . '=' . c
        endif
    endfor
endfor
if hlID('CarriageReturn')
    match CarriageReturn /\r$/
endif
