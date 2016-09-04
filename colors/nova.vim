" ==================================================================
" THEME
" ==================================================================

" NORMAL
let s:nova_normal_black = "#445660"
let s:nova_normal_red = "#DF8C8C"
let s:nova_normal_green = "#A8CE93"
let s:nova_normal_yellow = "#DADA93"
let s:nova_normal_blue = "#83AFE5"
let s:nova_normal_magenta = "#9A93E1"
let s:nova_normal_cyan = "#7FC1CA"
let s:nova_normal_white = "#C5D4DD"

" BRIGHT
let s:nova_bright_black = "#899BA6"
let s:nova_bright_red = "#F2C38F"
let s:nova_bright_magenta = "#D18EC2"
let s:nova_bright_white = "#E6EEF3"

" DECORATION
let s:nova_decoration_dark = "#1E272C"
let s:nova_decoration_medium = "#556873"
let s:nova_decoration_light = "#6A7D89"


" ==================================================================
" HIGHLIGHT HELPER
" ==================================================================

function! s:highlight_helper(syntax_group, foreground_color, background_color)
  if a:background_color != ""
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=" . a:background_color . " gui=NONE cterm=NONE term=NONE"
  else
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=NONE gui=NONE cterm=NONE term=NONE"
  endif
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
syntax on
syntax reset
let g:colors_name = 'nova'
call s:highlight_helper("Normal", s:nova_normal_white, "")


" ==================================================================
" SYNTAX
" ==================================================================

call s:highlight_helper("Comment", s:nova_normal_white, "")
call s:highlight_helper("Todo", s:nova_normal_white, "")
call s:highlight_helper("Identifier", s:nova_normal_white, "")
call s:highlight_helper("Constant", s:nova_normal_white, "")
call s:highlight_helper("Statement", s:nova_normal_white, "")
call s:highlight_helper("Type", s:nova_normal_white, "")
call s:highlight_helper("PreProc", s:nova_normal_white, "")
call s:highlight_helper("Error", s:nova_normal_white, "")
call s:highlight_helper("Underlined", s:nova_normal_white, "")
call s:highlight_helper("Special", s:nova_normal_white, "")
call s:highlight_helper("Ignore", s:nova_normal_white, "")


" ==================================================================
" EDITOR
" ==================================================================

" DIRECTORIES
call s:highlight_helper("Directory", s:nova_normal_white, "")

" PAGER
call s:highlight_helper("MoreMsg", s:nova_normal_white, "")

" TABS
call s:highlight_helper("Tabline", s:nova_normal_white, "")
call s:highlight_helper("TablineFill", s:nova_normal_white, "")
call s:highlight_helper("TablineSel", s:nova_normal_white, "")

" SPLITS
set fillchars=""
call s:highlight_helper("VertSplit", s:nova_normal_white, "")

" STATUS LINE
call s:highlight_helper("StatusLine", s:nova_normal_white, "")
call s:highlight_helper("StatusLineNC", s:nova_normal_white, "")

" BUFFER OVERFLOW
call s:highlight_helper("EndOfBuffer", s:nova_normal_white, "")

" SEARCH
call s:highlight_helper("Search", s:nova_normal_white, "")
call s:highlight_helper("IncSearch", s:nova_normal_white, "")

" COMMAND LINE
call s:highlight_helper("ModeMsg", s:nova_normal_white, "")
call s:highlight_helper("ErrorMsg", s:nova_normal_white, "")
call s:highlight_helper("WarningMsg", s:nova_normal_white, "")
call s:highlight_helper("WildMenu", s:nova_normal_white, "")
call s:highlight_helper("Question", s:nova_normal_white, "")
call s:highlight_helper("Title", s:nova_normal_white, "")

" GUTTER
call s:highlight_helper("LineNr", s:nova_normal_white, "")
call s:highlight_helper("SignColumn", s:nova_normal_white, "")
call s:highlight_helper("CursorColumn", s:nova_normal_white, "")
call s:highlight_helper("CursorLineNr", s:nova_normal_white, "")

" CURSOR
call s:highlight_helper("CursorLine", s:nova_normal_white, "")

" BRACKET MATCHING
call s:highlight_helper("MatchParen", s:nova_normal_white, "")

" VISUAL MODE
call s:highlight_helper("Visual", s:nova_normal_white, "")
call s:highlight_helper("VisualNOS", s:nova_normal_white, "")

" POPUP MENU
call s:highlight_helper("Pmenu", s:nova_normal_white, "")
call s:highlight_helper("PmenuSel", s:nova_normal_white, "")
call s:highlight_helper("PmenuSbar", s:nova_normal_white, "")
call s:highlight_helper("PmenuThumb", s:nova_normal_white, "")

" DIFFS
call s:highlight_helper("DiffAdd", s:nova_normal_white, "")
call s:highlight_helper("DiffChange", s:nova_normal_white, "")
call s:highlight_helper("DiffDelete", s:nova_normal_white, "")
call s:highlight_helper("DiffText", s:nova_normal_white, "")

" FOLDS
call s:highlight_helper("Folded", s:nova_normal_white, "")
call s:highlight_helper("FoldColumn", s:nova_normal_white, "")

" COLUMNS
call s:highlight_helper("ColorColumn", s:nova_normal_white, "")

" OTHER
call s:highlight_helper("SpecialKey", s:nova_normal_white, "")
call s:highlight_helper("NonText", s:nova_normal_white, "")
call s:highlight_helper("Conceal", s:nova_normal_white, "")
