SAVEHIST=100000
HISTFILE=~/.zsh_history
HISTFILESIZE=1000000000
HISTSIZE=1000000000

setopt INC_APPEND_HISTORY
HISTTIMEFORMAT="[%F %T] "

setopt EXTENDED_HISTORY
# History ignore
export HISTORY_IGNORE="(ls|cd|exit|history|clear)"

# Remove duplicates
setopt HIST_IGNORE_ALL_DUPS

case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|xterm-kitty|gnome*|interix|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD#\/$HOME/\~}\007"'
    ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

precmd() { eval "$PROMPT_COMMAND" }

# Load aliases
source $HOME/.aliasrc

bindkey -v

# Pager
export PAGER="most"

# Extract

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

# PATH
export PATH=$PATH:/home/${user}/bin
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Load starship
eval "$(starship init zsh)"

# ZSH extensions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias luamake=/home/mslota/.config/lua-language-server/3rd/luamake/luamake
