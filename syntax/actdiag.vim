" Vim syntax file
" Language:    actdiag
" Maintainer:
" URL:
" Last Change: 2012 Sep 06 - initial version

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the diag syntax to start with
if version < 600
  so <sfile>:p:h/diag.vim
else
  runtime! syntax/diag.vim
  unlet b:current_syntax
endif

" General keywords
syn keyword  actKeyword  actdiag lane

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_act_syntax_inits")
  if version < 508
    let did_act_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink actKeyword      Keyword
  HiLink actType         Type
  HiLink actKeyChar      Keyword

  delcommand HiLink
endif

let b:current_syntax = "actdiag"

" vim: ts=8
