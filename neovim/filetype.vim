augroup filetypedetect
  " au BufRead,BufNewFile setfiletype
  au BufRead,BufNewFile *.js setfiletype javascript
  au BufRead,BufNewFile *.rb setfiletype ruby
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.scala setfiletype scala
  au BufRead,BufNewFile *.py setfiletype python
  au BufRead,BufNewFile *.html setfiletype html
  au BufRead,BufNewFile *.css setfiletype css
  au BufRead,BufNewFile *.go setfiletype golang
  au BufRead,BufNewFile *.rs setfiletype rust
augroup END
