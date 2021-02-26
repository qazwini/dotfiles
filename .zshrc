
#### UI Customization ############################################

# Prompt
export PS1=$'%{\e[38;5;39m%}%n %1~ $%{\e[0m%} '

# Custom scripts
export PATH=~/bin:$PATH

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias grep="grep --color"

# iTerm tab text
if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;${PWD##*/}\007"
}
fi


#### Aliases #####################################################
# alias alias_name="command_to_run"

alias weather='curl "http://wttr.in/canton_michigan?Tn1"'
alias whatismyip='curl "ipinfo.io/ip"'

# Custom paths
alias school="cd ${HOME}/Desktop/schol/2021\ Winter/"
alias udemypy="cd ${HOME}/Developer/udemy/python"
export EECS280="${HOME}/Desktop/schol/2021 Winter/EECS 280/"
export EECS201="${HOME}/Desktop/schol/2021 Winter/EECS 201/"

# Open
alias ubuntu="open ${HOME}/Parallels/Ubuntu.pvm"
alias windows="open ${HOME}/Parallels/Windows.pvm"
alias naf="atom ${HOME}/Desktop/nafilah/Nafilah/Nafilah/Models/Nafilahs"

if test -d /Applications/Google\ Chrome.app; then
  alias chrome='open -a "Google Chrome" --args'
  alias google-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
fi
if test -d /Applications/Firefox.app; then
  alias firefox='open -a Firefox --args'
  alias firefox-private='open -a Firefox -n --args --private-window'
  alias firefox-new-window='open -a Firefox -n --args --new-window'
fi


#### Editor ######################################################

export EDITOR=vim
export VISUAL="$EDITOR"        # Here for historical reasons
export SUDO_EDITOR="$EDITOR"   # Editor used by sudoedit and sudo -e
export GIT_EDITOR="$EDITOR"    # Editor used by git commit

# Vim Keybindings
# bindkey -v




