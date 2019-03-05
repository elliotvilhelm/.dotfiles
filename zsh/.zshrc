# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# More Path Stuff
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Applications/SourceTree.app/Contents/Resources/git_local/bin:$PATH
#export PATH=$PATH:$HOME
export PATH=/Library/TeX/texbin:$PATH
export PATH=/Users/null/.local/bin:$PATH

# ZSH Themes and Plugins
ZSH_THEME="robbyrussell"
plugins=(
  git
  osx
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

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
alias viconfig="nvim ~/.dotfiles/nvim/init.vim"
alias zconfig="nvim ~/.dotfiles/zsh/.zshrc"
alias tags="ctags -R ."
alias cat='lolcat'
alias pipmeout="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -"
alias pip3meout="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -"
alias cs='fortune | cowsay -f blowfish | lolcat'
alias o="open "
alias push="git push origin master"
alias jp="git add *; git commit -m 'jp'; git push origin master"
alias wassap="say not much you?"
alias python="python3"
alias crypto_server="ssh -i \"crypto_key.pem\" ubuntu@ec2-34-220-164-33.us-west-2.compute.amazonaws.com"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/null/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/null/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/null/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/null/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
