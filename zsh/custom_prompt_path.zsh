#Load themes from ohmy_yadr and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.ohmy_yadr/zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit
