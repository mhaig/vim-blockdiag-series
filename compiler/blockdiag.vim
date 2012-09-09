" Vim compiler file
" Compiler:    blockdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "blockdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=blockdiag\ -a\ -T$*\ %
" CompilerSet makeprg=blockdiag\ -a\ %
