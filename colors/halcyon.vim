" File:       halcyon.vim
" Maintainer: Luke Gaudreau (infosoph)
" URL:        https://github.com/infosoph/vim-halcyon
" Modified:   Sep. 5, 2013
" License:    MIT

" Description:"{{{
" ----------------------------------------------------------------------------
" A light, low contrast theme

"}}}
" Initialisation:"{{{
" ----------------------------------------------------------------------------
if !has("gui_running") && &t_Co < 256
  finish
endif

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "halcyon"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------
if has("gui_running")
  let s:vmode      = "gui"
  let s:white = "#ffffff"
  let s:black = "#969696"
  let s:dark_white  = "#e3e3e3"
  let s:dark_black  = "#636363"
  let s:gray       = "#f2f2f2"
  let s:dark_gray    = "#b8b8b8"
  let s:dark_red        = "#e47272"
  let s:red     = "#fe7f7f"
  let s:dark_yellow     = "#e3d071"
  let s:yellow  = "#ffea80"
  let s:dark_green      = "#5cb899"
  let s:green      = "#66ccaa"
  let s:dark_cyan       = "#4b9696"
  let s:cyan   = "#5cb8b8"
  let s:dark_blue       = "#73ace5"
  let s:blue  = "#73ace5"
  let s:dark_magenta     = "#6666cc"
  let s:magenta  = "#8080ff"
  let s:dark_white = "#e3e3e3"
else
  let s:vmode      = "cterm"
  let s:white = "7"
  let s:black = "8"
  let s:dark_black = "0"
  let s:dark_white  = "15"
  let s:gray       = "255"
  let s:dark_gray    = "250"
  let s:dark_red        = "9"
  let s:red     = "1"
  let s:dark_yellow     = "3"
  let s:yellow     = "11"
  let s:dark_green      = "10"
  let s:green      = "2"
  let s:dark_cyan       = "14"
  let s:cyan   = "6"
  let s:dark_blue       = "12"
  let s:blue       = "4"
  let s:dark_magenta     = "13"
  let s:magenta     = "5"
endif

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
exe "let s:bg_none       = ' ".s:vmode."bg=".s:none      ."'"
exe "let s:bg_black = ' ".s:vmode."bg=".s:black."'"
exe "let s:bg_dark_black = ' ".s:vmode."bg=".s:dark_black."'"
exe "let s:bg_white = ' ".s:vmode."bg=".s:white."'"
exe "let s:bg_dark_white  = ' ".s:vmode."bg=".s:dark_white ."'"
exe "let s:bg_gray       = ' ".s:vmode."bg=".s:gray      ."'"
exe "let s:bg_dark_gray    = ' ".s:vmode."bg=".s:dark_gray   ."'"
exe "let s:bg_dark_red        = ' ".s:vmode."bg=".s:dark_red       ."'"
exe "let s:bg_red     = ' ".s:vmode."bg=".s:red    ."'"
exe "let s:bg_dark_yellow     = ' ".s:vmode."bg=".s:dark_yellow    ."'"
exe "let s:bg_yellow     = ' ".s:vmode."bg=".s:yellow    ."'"
exe "let s:bg_dark_green      = ' ".s:vmode."bg=".s:dark_green     ."'"
exe "let s:bg_dark_cyan       = ' ".s:vmode."bg=".s:dark_cyan      ."'"
exe "let s:bg_dark_blue       = ' ".s:vmode."bg=".s:dark_blue      ."'"
exe "let s:bg_dark_magenta     = ' ".s:vmode."bg=".s:dark_magenta    ."'"
exe "let s:bg_magenta     = ' ".s:vmode."bg=".s:magenta    ."'"
exe "let s:bg_gray     = ' ".s:vmode."bg=".s:gray    ."'"
exe "let s:bg_dark_white = ' ".s:vmode."bg=".s:dark_white."'"
exe "let s:bg_green      = ' ".s:vmode."bg=".s:green     ."'"
exe "let s:bg_cyan   = ' ".s:vmode."bg=".s:cyan  ."'"
exe "let s:bg_red      = ' ".s:vmode."bg=".s:red     ."'"

exe "let s:fg_none       = ' ".s:vmode."fg=".s:none      ."'"
exe "let s:fg_black = ' ".s:vmode."fg=".s:black."'"
exe "let s:fg_white = ' ".s:vmode."fg=".s:white."'"
exe "let s:fg_dark_white  = ' ".s:vmode."fg=".s:dark_white ."'"
exe "let s:fg_dark_black = ' ".s:vmode."fg=".s:dark_black."'"
exe "let s:fg_gray       = ' ".s:vmode."fg=".s:gray      ."'"
exe "let s:fg_dark_gray    = ' ".s:vmode."fg=".s:dark_gray   ."'"
exe "let s:fg_dark_red        = ' ".s:vmode."fg=".s:dark_red       ."'"
exe "let s:fg_red     = ' ".s:vmode."fg=".s:red    ."'"
exe "let s:fg_dark_yellow     = ' ".s:vmode."fg=".s:dark_yellow    ."'"
exe "let s:fg_dark_green      = ' ".s:vmode."fg=".s:dark_green     ."'"
exe "let s:fg_dark_cyan       = ' ".s:vmode."fg=".s:dark_cyan      ."'"
exe "let s:fg_dark_blue       = ' ".s:vmode."fg=".s:dark_blue      ."'"
exe "let s:fg_blue       = ' ".s:vmode."fg=".s:blue      ."'"
exe "let s:fg_dark_magenta     = ' ".s:vmode."fg=".s:dark_magenta    ."'"
exe "let s:fg_magenta     = ' ".s:vmode."fg=".s:magenta    ."'"
exe "let s:fg_gray     = ' ".s:vmode."fg=".s:gray    ."'"
exe "let s:fg_dark_white = ' ".s:vmode."fg=".s:dark_white."'"
exe "let s:fg_green      = ' ".s:vmode."fg=".s:green     ."'"
exe "let s:fg_cyan   = ' ".s:vmode."fg=".s:cyan  ."'"
exe "let s:fg_red      = ' ".s:vmode."fg=".s:red     ."'"

exe "let s:fmt_none      = ' ".s:vmode."=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl      = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

if has("gui_running")
  exe "let s:sp_none       = ' guisp=".s:none      ."'"
  exe "let s:sp_black = ' guisp=".s:black."'"
  exe "let s:sp_white = ' guisp=".s:white."'"
  exe "let s:sp_dark_white  = ' guisp=".s:dark_white ."'"
  exe "let s:sp_gray       = ' guisp=".s:gray      ."'"
  exe "let s:sp_dark_gray    = ' guisp=".s:dark_gray   ."'"
  exe "let s:sp_dark_red        = ' guisp=".s:dark_red       ."'"
  exe "let s:sp_red     = ' guisp=".s:red    ."'"
  exe "let s:sp_dark_yellow     = ' guisp=".s:dark_yellow    ."'"
  exe "let s:sp_dark_green      = ' guisp=".s:dark_green     ."'"
  exe "let s:sp_dark_cyan       = ' guisp=".s:dark_cyan      ."'"
  exe "let s:sp_dark_blue       = ' guisp=".s:dark_blue      ."'"
  exe "let s:sp_dark_magenta     = ' guisp=".s:dark_magenta    ."'"
  exe "let s:sp_magenta     = ' guisp=".s:magenta    ."'"
  exe "let s:sp_gray     = ' guisp=".s:gray    ."'"
  exe "let s:sp_green      = ' guisp=".s:green     ."'"
  exe "let s:sp_cyan   = ' guisp=".s:cyan  ."'"
  exe "let s:sp_red      = ' guisp=".s:red     ."'"
else
  let s:sp_none       = ""
  let s:sp_black = ""
  let s:sp_white = ""
  let s:sp_dark_white  = ""
  let s:sp_dark_black = ""
  let s:sp_gray       = ""
  let s:sp_dark_gray    = ""
  let s:sp_dark_red        = ""
  let s:sp_red     = ""
  let s:sp_dark_yellow     = ""
  let s:sp_dark_green      = ""
  let s:sp_dark_cyan       = ""
  let s:sp_dark_blue       = ""
  let s:sp_dark_magenta     = ""
  let s:sp_magenta     = ""
  let s:sp_gray     = ""
  let s:sp_green      = ""
  let s:sp_cyan   = ""
  let s:sp_red   = ""
endif

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"  .s:fg_none        .s:bg_gray        .s:fmt_none
"		Conceal"
exe "hi! Cursor"       .s:fg_white        .s:bg_red         .s:fmt_none
"		CursorIM"
exe "hi! CursorColumn" .s:fg_none        .s:bg_gray        .s:fmt_none
exe "hi! CursorLine"   .s:fg_none        .s:bg_gray        .s:fmt_none
exe "hi! Directory"    .s:fg_dark_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"      .s:fg_white       .s:bg_dark_green       .s:fmt_none
exe "hi! DiffChange"   .s:fg_dark_magenta      .s:bg_cyan    .s:fmt_none
exe "hi! DiffDelete"   .s:fg_white         .s:bg_dark_red       .s:fmt_none
exe "hi! DiffText"     .s:fg_white  .s:bg_dark_magenta      .s:fmt_none
exe "hi! ErrorMsg"     .s:fg_white  .s:bg_dark_red         .s:fmt_stnd
exe "hi! VertSplit"    .s:fg_gray      .s:bg_none        .s:fmt_none
exe "hi! Folded"       .s:fg_dark_gray  .s:bg_gray  .s:fmt_none
exe "hi! FoldColumn"   .s:fg_none        .s:bg_dark_white  .s:fmt_none
exe "hi! SignColumn"   .s:fg_none        .s:bg_dark_white  .s:fmt_none
exe "hi! Incsearch"    .s:fg_black .s:bg_yellow .s:fmt_none
exe "hi! LineNr"       .s:fg_dark_gray     .s:bg_white        .s:fmt_none
exe "hi! CursorLineNr" .s:fg_red      .s:bg_none        .s:fmt_bold
exe "hi! MatchParen"   .s:fg_none       .s:bg_dark_gray         .s:fmt_none
exe "hi! ModeMsg"      .s:fg_dark_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"      .s:fg_dark_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"      .s:fg_dark_white   .s:bg_none        .s:fmt_none
exe "hi! Normal"       .s:fg_black  .s:bg_white  .s:fmt_none
exe "hi! Pmenu"        .s:fg_black  .s:bg_dark_white   .s:fmt_none
exe "hi! PmenuSel"     .s:fg_black  .s:bg_dark_white   .s:fmt_revr
"		PmenuSbar"
"		PmenuThumb"
exe "hi! Question"     .s:fg_dark_green       .s:bg_none        .s:fmt_none
exe "hi! Search"       .s:fg_black  .s:bg_dark_yellow      .s:fmt_none
exe "hi! SpecialKey"   .s:fg_dark_white   .s:bg_none        .s:fmt_none
exe "hi! SpellBad"     .s:fg_dark_red         .s:bg_none        .s:fmt_undr
exe "hi! SpellCap"     .s:fg_dark_blue        .s:bg_none        .s:fmt_undr
exe "hi! SpellLocal"   .s:fg_dark_cyan        .s:bg_none        .s:fmt_undr
exe "hi! SpellRare"    .s:fg_dark_magenta      .s:bg_none        .s:fmt_undr
exe "hi! StatusLine"   .s:fg_dark_white     .s:bg_black  .s:fmt_revr
exe "hi! StatusLineNC" .s:fg_gray      .s:bg_dark_gray   .s:fmt_revr
exe "hi! TabLine"      .s:fg_black  .s:bg_dark_white  .s:fmt_revr
"		TabLineFill"
"		TabLineSel"
exe "hi! Title"        .s:fg_dark_black      .s:bg_none        .s:fmt_bold
exe "hi! Visual"       .s:fg_none        .s:bg_dark_white   .s:fmt_none
"		VisualNos"
exe "hi! WarningMsg"   .s:fg_dark_red         .s:bg_none        .s:fmt_none
exe		"hi! WildMenu"        .s:fg_red          .s:bg_dark_white        .s:fmt_bold

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"    .s:fg_dark_gray     .s:bg_none   .s:fmt_none

exe "hi! Constant"   .s:fg_dark_cyan        .s:bg_none   .s:fmt_none
exe "hi! String"    .s:fg_dark_green       .s:bg_none   .s:fmt_none
"		Character"
"		Number"
"		Boolean"
"		Float"

exe "hi! Identifier" .s:fg_magenta        .s:bg_none   .s:fmt_none
exe "hi! Function"  .s:fg_magenta      .s:bg_none   .s:fmt_none

exe "hi! Statement"  .s:fg_dark_blue       .s:bg_none   .s:fmt_none
"		Conditional"
"		Repeat"
"		Label"
exe "hi! Operator"  .s:fg_black  .s:bg_none   .s:fmt_none
"		Keyword"
"		Exception"

exe "hi! PreProc"    .s:fg_dark_black      .s:bg_none   .s:fmt_none
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe "hi! Type"       .s:fg_blue      .s:bg_none   .s:fmt_none
"		StorageClass"
exe "hi! Structure" .s:fg_dark_cyan        .s:bg_none   .s:fmt_none
"		Typedef"

exe "hi! Special"    .s:fg_magenta         .s:bg_none   .s:fmt_none
"		SpecialChar"
"		Tag"
"		Delimiter"
"		SpecialComment"
"		Debug"
"
exe "hi! Underlined" .s:fg_none      .s:bg_none   .s:fmt_undr

exe "hi! Ignore"     .s:fg_none        .s:bg_none   .s:fmt_none

exe "hi! Error"      .s:fg_dark_red         .s:bg_none   .s:fmt_undr

exe "hi! Todo"       .s:fg_dark_green     .s:bg_none  .s:fmt_none

" Quickfix window
exe "hi! qfLineNr"   .s:fg_dark_yellow      .s:bg_none   .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"		diffOldFile
"		diffNewFile
"		diffFile
"		diffOnly
"		diffIdentical
"		diffDiffer
"		diffBDiffer
"		diffIsA
"		diffNoEOL
"		diffCommon
hi! link diffRemoved Special
"		diffChanged
hi! link diffAdded Statement
"		diffLine
"		diffSubname
"		diffComment

"}}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2013 w0ng
" Copyright (c) 2013 Luke Gaudreau
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
