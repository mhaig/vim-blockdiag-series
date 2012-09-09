" Vim compiler file
" Compiler:    seqdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "seqdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=seqdiag\ -a\ -T$*\ %
" CompilerSet makeprg=seqdiag\ -a\ %
