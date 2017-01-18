export DEFAULT_USER=`whoami`
export PIP_REQUIRE_VIRTUALENV=true
#export WORKON_HOME=~/.virtualenvs
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
source $HOME/Dropbox/Personal/mygit/pexports.zsh
source $HOME/Dropbox/Personal/mygit/palias.zsh
[[ $- = *i* ]] && source $HOME/.zmesh/zsh/liquid-prompt/liquidprompt
#source $HOME/.zmesh/zsh/git-extra-commands/git-extra-commands.plugin.zsh
# pyenv related
export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export GOPATH=$HOME/Documents/macys/code/golang
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
