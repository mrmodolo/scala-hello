function! scala#before() abort
  let g:neoformat_enabled_scala = ['scalafmt']
  let g:neoformat_scala_scalafmt = {
      \ 'exe': '/home/modolo/.local/share/coursier/bin/scalafmt',
      \ 'args': ['--stdin'],
      \ 'stdin': 1,
      \ }
endfunction
