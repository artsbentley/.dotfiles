export PATH=/opt/homebrew/bin:$PATH

#enable vi mode
bindkey -v

#load seperated config files
for conf in "$HOME/.config/zsh/"*.zsh; do
  source "${conf}"
done
unset conf

