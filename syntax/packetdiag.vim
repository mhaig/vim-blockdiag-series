" Vim syntax file
" Language:    packetdiag
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
syn keyword  packetKeyword  packetdiag

" Diagram attributes
syn keyword  packetType colwidth colheight

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_packet_syntax_inits")
  if version < 508
    let did_packet_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink packetKeyword       Keyword
  HiLink packetType          Type
  HiLink packetKeyChar       Keyword

  delcommand HiLink
endif

let b:current_syntax = "packetdiag"

" vim: ts=8
