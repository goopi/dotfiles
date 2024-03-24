
# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"