export PATH=/opt/homebrew/bin:$PATH
export EDITOR="nvim"

#enable vi mode
bindkey -v

#load seperated config files
for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

