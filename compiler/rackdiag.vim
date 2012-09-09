" Vim compiler file
" Compiler:    rackdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "rackdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=rackdiag\ -a\ -T$*\ %
" CompilerSet makeprg=rackdiag\ -a\ %
