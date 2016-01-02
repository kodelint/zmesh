#Load themes from zmesh and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.zmesh/zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit
