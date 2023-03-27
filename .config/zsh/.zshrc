function add_to_path() {
# checks if $1 is in $PATH and adds it if not
  local dir="$1"
  [[ ":$PATH:" != *":$dir:"* ]] && export PATH="$dir:$PATH"
}

add_to_path "$HOME/.dotfiles/.config/bin/"
add_to_path "/opt/homebrew/bin"

export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
export WIKI_DIR="$HOME/wiki/home"

#enable vi mode
bindkey -v

#load seperated config files
for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

