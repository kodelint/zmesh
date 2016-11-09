export DEFAULT_USER=`whoami`
#export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=~/.virtualenvs
# why type 11 characters when you can type 2?
alias be='bundle exec'
# useful variables for scripting
# e.g. for silo in $silos; do be cap $silo smn deploy:upload_configs; be cap $silo smn deploy:restart; done;
source /Users/`whoami`/.rvm/scripts/rvm
source /usr/local/bin/virtualenvwrapper.sh
source /Users/`whoami`/Dropbox/Personal/mygit/pexports.zsh
source /Users/`whoami`/Dropbox/Personal/mygit/palias.zsh
[[ $- = *i* ]] && source $HOME/.zmesh/zsh/liquidprompt/liquidprompt.plugin.zsh
source /Users/`whoami`/.zmesh/zsh/git-extra-commands/git-extra-commands.plugin.zsh

