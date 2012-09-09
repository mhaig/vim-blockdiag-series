" Vim syntax file
" Based on dot.vim
" Language:     blockdiag series
" Filenames:    *.diag
" Maintainer:
" URL:
" Last Change: 2012 Sep 06 - initial version

" FIXME: Share properly syntax of blockdiag series?
" FIXME: Need color name highlight?

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Errors
syn match    diagParErr     ")"
syn match    diagBrackErr   "]"
syn match    diagBraceErr   "}"

" Enclosing delimiters
syn region   diagEncl transparent matchgroup=diagParEncl start="(" matchgroup=diagParEncl end=")" contains=ALLBUT,diagParErr
syn region   diagEncl transparent matchgroup=diagBrackEncl start="\[" matchgroup=diagBrackEncl end="\]" contains=ALLBUT,diagBrackErr
syn region   diagEncl transparent matchgroup=diagBraceEncl start="{" matchgroup=diagBraceEncl end="}" contains=ALLBUT,diagBraceErr

" Comments
syn region   diagComment start="//" end="$" contains=diagComment,diagTodo
syn region   diagComment start="/\*" end="\*/" contains=diagComment,diagTodo
syn keyword  diagTodo contained TODO FIXME XXX NOTE NOTES

" Strings
syn region   diagString    start=+"+ skip=+\\\\\|\\"+ end=+"+

" General keywords
syn keyword  diagKeyword  diagram group class

" Diagram attributes
syn keyword  diagType node_width node_height span_width span_height
syn keyword  diagType orientation portrait
syn keyword  diagType default_fontsize default_shape
syn keyword  diagType default_node_color default_group_color default_linecolor default_textcolor

" Node attributes
syn keyword  diagType numbered shape background stacked description icon width height
syn keyword  diagType box square roundedbox dots
syn keyword  diagType circle ellipse diamond minidiamond
syn keyword  diagType note mail cloud actor
syn keyword  diagType beginpoint endpoint
syn keyword  diagType flowchart condition database terminator input loopin loopout
syn keyword  diagType href

" Edge attributes
syn keyword  diagType dir none forward back both
syn keyword  diagType folded thick

" Shared attributes (diagrams, nodes, edges)
" color
syn keyword  diagType white snow ghostwhite ivory mintcream azure floralwhite aliceblue lavenderblush seashell whitesmoke honeydew lightyellow lightcyan oldlace cornsilk linen lemonchiffon lightgoldenrodyellow beige lavender mistyrose papayawhip antiquewhite blanchedalmond bisque moccasin gainsboro peachpuff paleturquoise navajowhite pink wheat palegoldenrod lightgrey lightpink powderblue thistle lightblue khaki violet plum lightsteelblue aquamarine lightskyblue silver skyblue palegreen orchid burlywood hotpink lightsalmon tan lightgreen yellow fuchsia magenta aqua cyan darkgray darksalmon sandybrown lightcoral turquoise salmon cornflowerblue mediumturquoise mediumorchid darkkhaki palevioletred mediumpurple mediumaquamarine greenyellow rosybrown darkseagreen gold mediumslateblue coral deepskyblue dodgerblue tomato deeppink orange goldenrod darkturquoise cadetblue yellowgreen lightslategray darkorchid blueviolet mediumspringgreen peru slateblue darkorange royalblue indianred gray slategray chartreuse springgreen steelblue lightseagreen lawngreen darkviolet mediumvioletred mediumseagreen chocolate darkgoldenrod orangered dimgray limegreen crimson sienna olivedrab darkmagenta darkcyan darkslateblue seagreen olive purple teal red lime blue brown firebrick darkolivegreen saddlebrown forestgreen indigo darkslategray mediumblue midnightblue darkred darkblue maroon green navy darkgreen black

" Shared attributes (nodes and edges)
syn keyword  diagType label style dotted dashed color textcolor fontsize

" Special chars
syn match    diagKeyChar  "="
syn match    diagKeyChar  ";"
syn match    diagKeyChar  "->"
syn match    diagKeyChar  "<-"
syn match    diagKeyChar  "<->"
syn match    diagKeyChar  "--"

" Identifier
" syn match    diagIdentifier /\<\w\+\(:\w\+\)\?\>/

" Synchronization
syn sync minlines=50
syn sync maxlines=500

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_diag_syntax_inits")
  if version < 508
    let did_diag_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink diagParErr      Error
  HiLink diagBraceErr    Error
  HiLink diagBrackErr    Error

  HiLink diagComment     Comment
  HiLink diagTodo        Todo

  HiLink diagParEncl     Keyword
  HiLink diagBrackEncl   Keyword
  HiLink diagBraceEncl   Keyword

  HiLink diagKeyword     Keyword
  HiLink diagType        Type
  HiLink diagKeyChar     Keyword

  HiLink diagString      String
  " HiLink diagIdentifier  Identifier

  delcommand HiLink
endif

let b:current_syntax = "diag"

" vim: ts=8
