function add_to_path() {
# checks if $1 is in $PATH and adds it if not
  local dir="$1"
  [[ ":$PATH:" != *":$dir:"* ]] && export PATH="$dir:$PATH"
}

add_to_path "$HOME/.dotfiles/.config/bin/"
add_to_path "/opt/homebrew/bin"
add_to_path "$HOME/.config/tmux/plugins/tmuxifier/bin/"
add_to_path "$HOME/nix/var/nix/profiles/default/bin"


export EDITOR=$(which nvim)
export VISUAL=$(which nvim)
export WIKI_DIR="$HOME/wiki/home"

#enable vi mode
bindkey -v

# enable reverse search




#load seperated config files
for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; 
then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

 # Nix
 if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
 fi
 # End Nix

# Created by `pipx` on 2023-11-09 12:30:15
export PATH="$PATH:/Users/arar/.local/bin"

# direnv
eval "$(direnv hook zsh)"
# Bind ctrl-r but not up arrow
eval "$(atuin init zsh --disable-up-arrow)"
