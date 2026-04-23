# dotfiles

## Setup

各ツールの設定ディレクトリに `${XDG_CONFIG_HOME:-$HOME/.config}/<tool>` からシンボリックリンクを張ります。
既にリンクやディレクトリが存在する場合はスキップします。

### Prerequisites

[runme](https://github.com/runmedev/runme) をインストールしておくと、下記のコードブロックを `runme run <name>` で実行できます。

```sh { name=install-runme }
brew install runme
```

### Link all

```sh { name=link-all }
runme run link-fish link-ghostty link-neovim link-yazi
```

### fish

```sh { name=link-fish }
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_home/fish"
if [ -L "$target" ] || [ -e "$target" ]; then
  echo "skip: $target already exists"
else
  mkdir -p "$config_home"
  ln -s "$(pwd)/fish" "$target"
  echo "linked: $target -> $(pwd)/fish"
fi
```

### ghostty

```sh { name=link-ghostty }
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_home/ghostty"
if [ -L "$target" ] || [ -e "$target" ]; then
  echo "skip: $target already exists"
else
  mkdir -p "$config_home"
  ln -s "$(pwd)/ghostty" "$target"
  echo "linked: $target -> $(pwd)/ghostty"
fi
```

### neovim

`nvim` ディレクトリ名として張ります（neovim の慣習に合わせるため）。

```sh { name=link-neovim }
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_home/nvim"
if [ -L "$target" ] || [ -e "$target" ]; then
  echo "skip: $target already exists"
else
  mkdir -p "$config_home"
  ln -s "$(pwd)/neovim" "$target"
  echo "linked: $target -> $(pwd)/neovim"
fi
```

### yazi

```sh { name=link-yazi }
config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
target="$config_home/yazi"
if [ -L "$target" ] || [ -e "$target" ]; then
  echo "skip: $target already exists"
else
  mkdir -p "$config_home"
  ln -s "$(pwd)/yazi" "$target"
  echo "linked: $target -> $(pwd)/yazi"
fi
```
