# -- Aliases -- #
source ~/.aliases

# oh-my-zsh
source ~/.oh-my-zshrc

# load git-related aliases
source ~/.git_aliases

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
