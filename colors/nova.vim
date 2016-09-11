" ==================================================================
" COLORS
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
    exec "highlight " . a:syntax_group . " guifg=" . a:foreground_color . " guibg=" . s:nova_normal_black . " gui=NONE cterm=NONE term=NONE"
  endif
endfunction


" ==================================================================
" RESET
" ==================================================================

set background=dark
highlight clear
set termguicolors
set fillchars=""
syntax on
syntax reset
let g:colors_name = 'nova'
call s:highlight_helper("Normal", s:nova_normal_white, "")


" ==================================================================
" HIGHLIGHT GROUPS BY PURPOSE
" ==================================================================

" DECORATION
call s:highlight_helper("SignColumn", "NONE", "")
call s:highlight_helper("LineNr", s:nova_decoration_medium, "")
call s:highlight_helper("CursorLine", "NONE", s:nova_decoration_medium)
call s:highlight_helper("CursorColumn", s:nova_decoration_medium, "")
call s:highlight_helper("EndOfBuffer", s:nova_decoration_medium, "")
call s:highlight_helper("VertSplit", s:nova_decoration_medium, s:nova_decoration_medium)
call s:highlight_helper("StatusLineNC", s:nova_normal_black, s:nova_decoration_medium)
call s:highlight_helper("Pmenu", s:nova_normal_white, s:nova_decoration_medium)
call s:highlight_helper("PmenuSbar", s:nova_bright_black, s:nova_bright_black)
call s:highlight_helper("DiffText", s:nova_decoration_dark, "")
call s:highlight_helper("ColorColumn", s:nova_decoration_medium, "")
call s:highlight_helper("Folded", s:nova_normal_black, s:nova_decoration_medium)
call s:highlight_helper("FoldColumn", s:nova_normal_black, s:nova_decoration_medium)

" USER ACTION NEEDED
let s:nova_purpose_user_action_needed = s:nova_normal_red
call s:highlight_helper("Error", s:nova_purpose_user_action_needed, "")
call s:highlight_helper("ErrorMsg", s:nova_purpose_user_action_needed, "")
call s:highlight_helper("WarningMsg", s:nova_purpose_user_action_needed, "")
call s:highlight_helper("SpellBad", s:nova_normal_black, s:nova_purpose_user_action_needed)
call s:highlight_helper("SpellCap", s:nova_normal_black, s:nova_purpose_user_action_needed)
call s:highlight_helper("DiffChange", s:nova_normal_black, s:nova_purpose_user_action_needed)
call s:highlight_helper("DiffDelete", s:nova_normal_black, s:nova_purpose_user_action_needed)
call s:highlight_helper("Todo", s:nova_purpose_user_action_needed, "")

" USER CURRENT STATE
let s:nova_purpose_user_current_state = s:nova_normal_cyan
call s:highlight_helper("MatchParen", s:nova_purpose_user_current_state, "")
call s:highlight_helper("CursorLineNr", s:nova_purpose_user_current_state, "")
call s:highlight_helper("Visual", s:nova_normal_black, s:nova_purpose_user_current_state)
call s:highlight_helper("VisualNOS", s:nova_normal_black, s:nova_purpose_user_current_state)
call s:highlight_helper("IncSearch", s:nova_normal_black, s:nova_purpose_user_current_state)
call s:highlight_helper("Search", s:nova_normal_black, s:nova_purpose_user_current_state)
call s:highlight_helper("WildMenu", s:nova_decoration_medium, s:nova_purpose_user_current_state)
call s:highlight_helper("Question", s:nova_purpose_user_current_state, "")
call s:highlight_helper("MoreMsg", s:nova_purpose_user_current_state, "")
call s:highlight_helper("ModeMsg", s:nova_purpose_user_current_state, "")
call s:highlight_helper("StatusLine", s:nova_purpose_user_current_state, s:nova_decoration_medium)
call s:highlight_helper("PmenuSel", s:nova_decoration_medium, s:nova_purpose_user_current_state)
call s:highlight_helper("PmenuThumb", s:nova_purpose_user_current_state, s:nova_purpose_user_current_state)
call s:highlight_helper("DiffAdd", s:nova_normal_black, s:nova_purpose_user_current_state)

" CONSTANT
let s:nova_purpose_constant = s:nova_normal_cyan
call s:highlight_helper("Constant", s:nova_purpose_constant, "")
call s:highlight_helper("Directory", s:nova_purpose_constant, "")

" IDENTIFIER
let s:nova_purpose_identifier = s:nova_normal_blue
call s:highlight_helper("Identifier", s:nova_purpose_identifier, "")

" STATEMENT
let s:nova_purpose_statement = s:nova_normal_yellow
call s:highlight_helper("Statement", s:nova_purpose_statement, "")

" TYPE
let s:nova_purpose_type = s:nova_normal_green
call s:highlight_helper("Type", s:nova_purpose_type, "")

" GLOBAL
let s:nova_purpose_global = s:nova_normal_magenta
call s:highlight_helper("PreProc", s:nova_purpose_global, "")

" EMPHASIS
let s:nova_purpose_emphasis = s:nova_bright_magenta
call s:highlight_helper("Underlined", s:nova_purpose_emphasis, "")

" SPECIAL
let s:nova_purpose_special = s:nova_bright_red
call s:highlight_helper("Special", s:nova_purpose_special, "")
call s:highlight_helper("SpecialKey", s:nova_purpose_special, "")
call s:highlight_helper("NonText", s:nova_purpose_special, "")
call s:highlight_helper("Title", s:nova_purpose_special, "")

" TRIVIAL
let s:nova_purpose_trivial = s:nova_bright_black
call s:highlight_helper("Comment", s:nova_purpose_trivial, "")
call s:highlight_helper("Ignore", s:nova_purpose_trivial, "")
call s:highlight_helper("Conceal", s:nova_purpose_trivial, "")
