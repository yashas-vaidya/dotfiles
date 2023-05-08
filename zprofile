
# two flavors of brew

## one for each arm - i386 & arm64

if [ "$(arch)" = "i386" ]
then
  echo "homebrew for arch i386"
  eval "$(/usr/local/homebrew/bin/brew shellenv)"
  # export PYENV_ROOT="$HOME/.pyenv/x86"

elif [ "$(arch)" = "arm64" ]
then
  echo "homebrew & pyenv for arch arm64"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export PYENV_ROOT="$HOME/.pyenv/arm"
fi

# attempting to solve some issues
  prefix=$(brew --prefix)
  export LDFLAGS="-L$prefix/opt/xz/lib $LDFLAGS"
  export CPPFLAGS="-I$prefix/opt/xz/include $CPPFLAGS"
  export PKG_CONFIG_PATH="$prefix/opt/xz/lib/pkgconfig:$PKG_CONFIG_PATH"


## add PYENV_ROOT to PATH
export PATH="$PYENV_ROOT/bin:$PATH"