#!/bin/sh

if [ -x "/usr/bin/git" ] ; then
  git clone 'https://github.com/Soulou/Soulou-s-Vim' "$HOME/Soulou-s-Vim"
  if [ -d "$HOME/.vim" ] ; then
    mv "$HOME/.vim" "$HOME/.vim.bak"
    mv "$HOME/Soulou-s-Vim" "$HOME/.vim"
  fi
else
  echo "Please install git" 1>&2
  exit -1
fi

if [ -f "$HOME/.vimrc" ] ; then
  mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
fi

cat > $HOME/.vimrc << EOF
"==== Vim Configuration ===="
:source $HOME/.vim/vimrc
EOF


