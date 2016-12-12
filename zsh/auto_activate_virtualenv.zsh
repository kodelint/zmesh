auto_activate_virtualenv() {
  current_dir="${PWD##*/}"
  if [ -e ~/.virtualenvs/$current_dir ]; then
    deactivate >/dev/null 2>&1
    source ~/.virtualenvs/$current_dir/bin/activate
  else
    deactivate >/dev/null 2>&1
  fi
}

pyvenv_cd() {
  cd "$@" && auto_activate_virtualenv
}

alias cd="pyvenv_cd"
