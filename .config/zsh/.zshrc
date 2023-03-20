function add_to_path_if_not_exists() {
  local dir="$1"
  [[ ":$PATH:" != *":$dir:"* ]] && export PATH="$dir:$PATH"
}

add_to_path_if_not_exists "$HOME/.dotfiles/.config/bin/"
add_to_path_if_not_exists "/opt/homebrew/bin"

# export PATH=/opt/homebrew/bin:$PATH
# export PATH=$PATH:$HOME/.dotfiles/.config/bin/

export EDITOR=$(which nvim)
export VISUAL=$(which nvim)

#enable vi mode

#enable vi mode
bindkey -v

#load seperated config files
for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

