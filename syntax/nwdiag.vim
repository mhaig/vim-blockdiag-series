" Vim syntax file
" Language:    nwdiag
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
syn keyword  nwKeyword  nwdiag network
syn keyword  nwType address

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_nw_syntax_inits")
  if version < 508
    let did_nw_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink nwKeyword       Keyword
  HiLink nwType          Type
  HiLink nwKeyChar       Keyword

  delcommand HiLink
endif

let b:current_syntax = "nwdiag"

" vim: ts=8
