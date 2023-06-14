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

#SSH
alias ssh="TERM=xterm-256color ssh"

alias :Lf="lfcd"

#vim aliases
alias vi="nvim"
alias vim="nvim"
alias v="nvim +GoToFile" #opens telescope immediately
alias nn="nvim +CreateNewNote" #opens nvim and creates a new telekasten note
alias fn="nvim +FindNote" #opens nvim and looks for telekasten notes

#makes sure that the alacritty shortcut work inside and outside of nvim
alias :GoToFile="nvim +GoToFile"
alias :CreateNewNote="nvim +CreateNewNote"
alias :FindNote="nvim +FindNote"
alias :LiveGrepNote="nvim +LiveGrepNote"
alias :GoToGitFile="nvim +GoToGitFile"
alias :OpenOilCwd="nvim +OpenOilCwd"


alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias c="clear"
alias home="cd ~"

alias echopath="echo $PATH | tr ':' '\n'"

# not working
# alias addbinpath="export PATH=$PATH:$(pwd)"


#task warrior
alias ta="task add"
alias tl="task list"

# help manual
alias help='run-help'
