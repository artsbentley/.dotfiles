#general usage
alias ls='exa -l --icons'                                                          # ls
alias l='exa -lbF -l --git --icons'                                                # list, size, type, git
alias ll='exa -lbF --git --icons'                                             # long list
alias llm='exa -lbGd --git --sort=modified --icons'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons' # all + extended list

# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'                                         # tree


alias vim="nvim"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias c="clear"
