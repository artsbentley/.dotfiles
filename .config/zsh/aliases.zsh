#general usage
alias ls='exa -l --icons -a'                                                          # ls
alias ll='exa -l --icons -a'                                                # list, size, type, git
alias l='exa -lbF -l --icons -a --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified --icons'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons' # all + extended list

# specialty views
alias lS='exa -1'                                                              # one column, just names
alias lt='exa --tree --level=2'                                         # tree


#vim aliases
alias vi="nvim"
alias vim="nvim"
alias v="nvim +GoToFile" #opens telescope immediately

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias c="clear"

alias echopath="echo $PATH | tr ':' '\n'"

# not working
# alias addbinpath="export PATH=$PATH:$(pwd)"


#task warrior
alias ta="task add"
alias tl="task list"

# help manual
alias help='run-help'
