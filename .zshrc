
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

#HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=2000

#neofetch

#~/bin/hadithpe

#### UI Customization ############################################

# Prompt
PROMPT_SYMBOL="$"
PS1=$'%{\e[38;5;39m%}%n %1~ $%{\e[0m%} '
#PS1="%F{#906cff}%n %1~ $%f "
#PS1="%F{#906cff}%n %1~%f %F{#ff5458}${PROMPT_SYMBOL}%f "
#PS1=$'%1~ %{\e[38;5;39m%}›%{\e[0m%} '
#PS1="%F{#F3F3F3}%1~%f %F{#906cff}›%f "

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

#### Variables ###################################################

export work="${HOME}/Desktop/work"
export website="${work}/website"
export udemypy="${HOME}/Developer/udemy/python"
export gg="${HOME}/Developer/grand giveaways/GrandGiveaways.github.io"
export nafilah="${HOME}/Desktop/nafilah/Nafilah"

#### Aliases #####################################################
# alias alias_name="command_to_run"

alias cdd="cd ${HOME}/Desktop"
alias weather='curl "http://wttr.in/canton_michigan?Tn1"'
alias whatismyip='curl "ipinfo.io/ip"'
#alias pip=pip3
alias ctags="`brew --prefix`/bin/ctags"

alias snake="python ${HOME}/Developer/python/snake.py"
alias donut="python ${HOME}/Developer/python/donut.py"

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

alias leetcode="$EDITOR ${HOME}/Developer/alg.md"

#### Editor ######################################################

export EDITOR=vim
export VISUAL="$EDITOR"        # Here for historical reasons
export SUDO_EDITOR="$EDITOR"   # Editor used by sudoedit and sudo -e
export GIT_EDITOR="$EDITOR"    # Editor used by git commit

# Keybindings
bindkey -v
bindkey "^[[3~" delete-char

#### School ######################################################

export research="${HOME}/Desktop/schol/research"
export school="${HOME}/Desktop/schol/winter2022"
export eecs376="${school}/eecs376"
export eecs442="${school}/eecs442"
export eecs485="${school}/eecs485"

alias jupyter="${HOME}/opt/anaconda3/bin/jupyter_mac.command; exit;"

#### Other #######################################################

# Custom scripts
export PATH=~/bin:$PATH

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/bzip2/include"

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# npm
#npm set prefix ~/.npm
#PATH="$HOME/.npm/bin:$PATH"
#PATH="./node_modules/.bin:$PATH"

# Not sure what this does
# autoload -Uz compinit promptinit
# compinit
# promptinit

# SIGINT on right prompt
# prompt_setup () {
#     prompt_brng_signal=0
# 
#     for arg in $@; do
#         if [[ "$arg" == 'signal' ]]; then prompt_brng_signal=1; fi
#     done
# 
#     add-zsh-hook precmd prompt_precmd
# }
# 
# decode_signal () {
#     if [[ $prompt_brng_signal -eq 1 ]]; then
#         signum=$(($1 - 128)) # get regular number
#         echo "SIG$(kill -l $signum)"
#     fi
# }
# 
# prompt_precmd () {
#     code=$?
# 
#     if [[ "$code" -eq 0 ]]; then
#         RPS1=
#     elif [[ "$code" -ge 128 ]]; then
#         RPS1="$(decode_signal $code)"
#     else
#         RPS1="%F{red}✘%f $code"
#     fi
# }
# 
# prompt_setup signal


# Anaconda setup

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/momo/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/momo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/momo/opt/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/momo/opt/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
