## sbt project compiled with Scala 3

### Usage

This is a normal sbt project. You can compile code with `sbt compile`, run it with `sbt run`, and `sbt console` will start a Scala 3 REPL.

For more information on the sbt-dotty plugin, see the
[scala3-example-project](https://github.com/scala/scala3-example-project/blob/main/README.md).

### SpaceVim


#### .SpaceVim.d/init.toml

```toml
[options]
autocomplete_method = "coc"
bootstrap_before = 'scala#before'

[[layers]]
name = 'lang#scala'
```

#### .SpaceVim.d/autoload/scala.vim

```lisp
function! scala#before() abort
  let g:neoformat_enabled_scala = ['scalafmt']
  let g:neoformat_scala_scalafmt = {
      \ 'exe': '/home/modolo/.local/share/coursier/bin/scalafmt',
      \ 'args': ['--stdin'],
      \ 'stdin': 1,
      \ }
endfunction
```

#### .scalafmt.conf

```conf
runner.dialect = scala3
```
