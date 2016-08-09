export DEFAULT_USER=`whoami`
#export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=~/.virtualenvs
# why type 11 characters when you can type 2?
alias be='bundle exec'
# useful variables for scripting
# e.g. for silo in $silos; do be cap $silo smn deploy:upload_configs; be cap $silo smn deploy:restart; done;
export silos='ashdr atldr amsdr pdxnprd atlnprd dubnprd pdxprd ashprd dubprd'
export drs='ashdr atldr amsdr'
export nprds='pdxnprd atlnprd dubnprd'
export prds='pdxprd ashprd dubprd'
source /Users/satyajit.roy/.rvm/scripts/rvm
source /usr/local/bin/virtualenvwrapper.sh
[[ $- = *i* ]] && source $HOME/.zmesh/zsh/liquidprompt/liquidprompt.plugin.zsh
