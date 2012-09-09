# vim-blockdiag-series

vim-blockdiag-series provides syntax highlighting and compiler plugin for [blockdiag series](http://blockdiag.com/en) in Vim.  
blockdiag series include [blockdiag](http://blockdiag.com/en/blockdiag), [seqdiag](http://blockdiag.com/en/seqdiag), [actdiag](http://blockdiag.com/en/actdiag), [nwdiag and rackdiag](http://blockdiag.com/en/nwdiag).

If you need automatic filetype detection, add some settings to  
`~/.vim/scripts.vim` on \*nix  
or  
`vimfiles/scripts.vim` on Windows  
(For details, `:help new-filetype` in Vim).

One example is as follows.

```vim
if did_filetype()
    finish
endif

let s:line1 = getline(1)

"" blockdiag series
if s:line1 =~ '\<diagram\|blockdiag\>\s*{'
    setfiletype blockdiag
elseif s:line1 =~ '\<seqdiag\>\s*{'
    setfiletype seqdiag
elseif s:line1 =~ '\<actdiag\>\s*{'
    setfiletype actdiag
elseif s:line1 =~ '\<nwdiag\>\s*{'
    setfiletype nwdiag
elseif s:line1 =~ '\<rackdiag\>\s*{'
    setfiletype rackdiag
elseif s:line1 =~ '\<packetdiag\>\s*{'
    setfiletype packetdiag
endif

unlet s:line1
```

For instance, when you write

```
nwdiag {
```

at the top line of your files, Vim sets `filetype=nwdiag`.  
However, note that in this setting Vim doesn't check all lines except the first line,  
so you fail the filetype detection even if the above directive line is described  
in the second or subsequent line of your files.
