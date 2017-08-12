export MYSQL_PATH=/usr/local/Cellar/mysql/5.6.27  
export PATH=$PATH:$MYSQL_PATH/bin
export DOTFILES=$HOME/.dotfiles
export ZSH=$DOTFILES/zsh

# display how long all tasks over 10 seconds take
export REPORTTIME=10

[[ -e ~/.terminfo ]] && export TERMINFO_DIRS=~/.terminfo:/usr/share/terminfo

if [[ -a ~/.localrc ]]; then
    source ~/.localrc
fi

# initialize autocomplete
autoload -U compinit
compinit

setopt NO_BG_NICE
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS
setopt LOCAL_TRAPS
#setopt IGNORE_EOF
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export EDITOR='nvim'

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/octave/3.8.0/bin:$PATH
# export PATH=/Users/Reaper/anaconda3/bin:$PATH
alias chrome='/usr/bin/open -a "/Applications/Google Chrome.app"'
export PATH="$HOME/anaconda3/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH"


# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
    export PATH=/usr/local/sbin:$PATH
    export PATH=/usr/local/bin:$PATH
fi

# adding path directory for custom scripts
export PATH=$DOTFILES/bin:$PATH

# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
    export PATH=~/bin:$PATH
fi



ZSH_THEME=agnoster

alias show-files='defaults write com.apple.finder AppleShowAllFiles YES'

alias hide-files='defaults write com.apple.finder AppleShowAllFiles NO'
alias reload!='source ~/.zshrc'
alias vim='nvim'
alias vi='nvim'
alias cl='clear'
alias l='ls -la'
alias ..='cd ..'
alias whosdaddy="osascript -e 'set volume 10';osascript -e 'say \"elliot is daddy dont forget it elliot is daddy dont forget it.\"'"
alias viconfig="cd .dotfiles/config/nvim; nvim init.vim"
# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: http://bbs.archlinux.org/#viewtopic.php?pid=521888#p521888

alias pipmeout="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -"
alias pip3meout="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -"
PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%a %b %d, %H:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B]%{\e[0m%}%b '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
