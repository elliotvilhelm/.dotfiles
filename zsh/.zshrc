# Path to your oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/zsh
# More Path Stuff
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Applications/SourceTree.app/Contents/Resources/git_local/bin:$PATH
export PATH=$PATH:$HOME

# ZSH Themes and Plugins
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git
  osx
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Add ssh-key to agent
ssh-add -K ~/.ssh/id_rsa

# Aliases
alias show-files='defaults write com.apple.finder AppleShowAllFiles YES'
alias hide-files='defaults write com.apple.finder AppleShowAllFiles NO'
alias ls='ls -G'
alias reload!='source ~/.zshrc'
alias vim='nvim'
alias vi='nvim'
alias cl='clear'
alias l='ls -la'
alias ..='cd ..'
alias viconfig="cd ~/.dotfiles/config/nvim; nvim init.vim"
alias cat='lolcat'
alias pipmeout="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -"
alias pip3meout="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -"
alias cs='fortune | cowsay -f blowfish | lolcat'
alias o="open "
alias push="git push origin master"
alias wassap="say not much you?"

# Zendesk
source ~/.zendesk_zshrc.sh
ssh-add -K ~/.ssh/id_rsa
