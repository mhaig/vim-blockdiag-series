" Vim compiler file
" Compiler:    actdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "actdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=actdiag\ -a\ -T$*\ %
" CompilerSet makeprg=actdiag\ -a\ %
