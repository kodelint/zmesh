# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
zmesh=$HOME/.zmesh

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

#move around

alias of='open -a Finder ./'
alias you='youtube-dl --extract-audio --audio-format mp3'
alias killssh='ps aux|grep ssh | awk '{print $2}' | xargs kill -9'
# Commands
alias quick='qlmanage -p'
alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias ols="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed'
alias networkreset='sudo networksetup -setv4off Wi-Fi; sudo networksetup -setdhcp Wi-Fi'
alias gemu='rvm all do gem update'
alias gemi='rvm all do gem install'
alias uprepo='ruby /Users/m535987/Dropbox/Personal/mygit/code/myTools/ruby/update_repos.rb'
alias rebase='git checkout localchanges; sh rebase.sh'
alias http='http --pretty all'
alias tar='/usr/local/bin/gtar'
alias grab='webtorrent --out ~/Downloads/clips/ download'
# ZMESH support
alias zav='zmesh vimplug-add'
alias zdv='zmesh vimplug-delete'
alias zlv='zmesh vimplug-list'
alias zup='zmesh vimplug-update'
alias zip='zmesh vimplug-init'

#nvim
alias nv='nvim'
alias vim='nvim'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source ${zmesh}/zsh/aliases.zsh
}

alias ae='nvim ${zmesh}/zsh/aliases.zsh' #alias edit
alias ar='source ${zmesh}/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload
alias se='nvim ${HOME}/.ssh/config'
# nvim using

# mimic nvim functions
alias :q='exit'

# nvimrc editing
alias ne='nvim ${HOME}/.config/nvim/settings/general.nvim'

# zsh profile editing
alias ze='nvim ${zmesh}/zsh/exports.zsh'
alias zr='source ${HOME}/.zpreztorc'

# Git Aliases
alias gs='git status'
alias gst='git stash'
alias gc='git checkout'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='nvim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias co='git co'
alias gf='git fetch'
alias gd='git diff'
alias gb='git b'
alias gba='git b -a'
alias gbd='git b -D'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'


alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update  && brew upgrade  && brew cleanup && brew prune && brew doctor'
