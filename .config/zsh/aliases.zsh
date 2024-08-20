#general usage
alias ls='eza --group-directories-first -l --icons -a'                                                          # ls
alias ll='eza --group-directories-first -l --icons -a'                                                # list, size, type, git
alias l='eza --group-directories-first -lbF -l --icons -a --git --sort=type --color=always'                                             # long list
alias llm='eza --group-directories-first -lbGd --git --sort=modified --icons'                            # long list, modified date sort
alias la='eza --group-directories-first -lbhHigUmuSa --time-style=long-iso --git --color-scale --icons'  # all list
alias lx='eza --group-directories-first -lbhHigUmuSa@ --time-style=long-iso --git --color-scale --icons' # all + extended list

# specialty views
alias lS='eza -1'                                                              # one column, just names
alias lt='eza --tree --level=2'                                         # tree

# CAT
alias cat="bat"

#SSH
alias ssh="TERM=xterm-256color ssh"

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

# HANDY TOOLS
alias echopath="echo $PATH | tr ':' '\n'"
alias cargodep="cargo tree --all-features --target=all | fgrep -- -sys"

# not working
alias addbinpath='export PATH=$PATH:$PWD'

alias oatmeal='oatmeal --theme-file ~/.config/oatmeal/gruvbox.tmtheme'


#task warrior
alias ta="task add"
alias tl="task list"

# help manual
alias help='run-help'
