" Vim compiler file
" Compiler:    nwdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "nwdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=nwdiag\ -a\ -T$*\ %
" CompilerSet makeprg=nwdiag\ -a\ %
