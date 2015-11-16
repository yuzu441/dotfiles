if [ ! -d "~/.vim/bundle" ]; then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

for f in .??*
do
  [ "$f" = ".git" ] && continue
  ln -snfv "$f" "$HOME"/"$f"
done
