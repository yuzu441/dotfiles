augroup filetypedetect
  " au BufRead,BufNewFile setfiletype
  au BufRead,BufNewFile *.js setfiletype javascript
  au BufRead,BufNewFile *.ts setfiletype typescript
  au BufRead,BufNewFile *.tsx setfiletype typescript
  au BufRead,BufNewFile *.rb setfiletype ruby
  au BufRead,BufNewFile *.php setfiletype php
  au BufRead,BufNewFile *.scala setfiletype scala
  au BufRead,BufNewFile *.py setfiletype python
  au BufRead,BufNewFile *.html setfiletype html
  au BufRead,BufNewFile *.css setfiletype css
  au BufRead,BufNewFile *.go setfiletype golang
augroup END
