
# two flavors of brew

## one for each arm - i386 & arm64

if [ "$(arch)" = "i386" ]
then
  echo "homebrew for arch i386"
  eval "$(/usr/local/homebrew/bin/brew shellenv)"
  export PYENV_ROOT="$HOME/.pyenv/x86"

elif [ "$(arch)" = "arm64" ]
then
  echo "homebrew for arch arm64"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PYENV_ROOT="$HOME/.pyenv/arm"
fi