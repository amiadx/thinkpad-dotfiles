# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/amia/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval $(thefuck --alias)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# mkdir, z into folder
mkz() {
  mkdir -p "$1" && z "$1"
}

# power stuff
alias lcpo="loginctl poweroff"
alias lcrb="loginctl reboot"
alias lcss="loginctl suspend"

alias ls="ls -Fa --color=auto"
alias lah="ls -lahF --color=auto"

alias please='sudo $(fc -ln -1)'

# easier copy and pasting
alias nano="micro"

alias neofetch="fastfetch"

export PATH=$PATH:/home/amia/.spicetify
export EDITOR=micro
