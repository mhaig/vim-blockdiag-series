" Vim compiler file
" Compiler:    packetdiag
" Maintainer:
" Last Change: 2012 Sep 08 - initial version

if exists("current_compiler")
  finish
endif
let current_compiler = "packetdiag"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=packetdiag\ -a\ -T$*\ %
" CompilerSet makeprg=packetdiag\ -a\ %
