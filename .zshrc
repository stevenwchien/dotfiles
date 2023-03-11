# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# -- Aliases -- #
alias emacs='emacs -nw'
alias ls='ls -a -G'
alias rezsh='source ~/.zshrc'
alias vimf='vim "$(fzf)"'

# -- Editing config files -- #
alias ohmyzshrc='vim ~/.oh-my-zshrc'
alias zshaliases='vim ~/.zsh_aliases'
alias gitaliases='vim ~/.git-aliases'
alias tmuxconf='vim ~/.tmux.conf'
alias vimrc='vim ~/.vimrc'

# oh-my-zsh
source ~/.oh-my-zshrc

# load git-related aliases
source ~/.git_aliases

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# Created by `pipx` on 2022-03-04 17:09:42
export PATH="$PATH:/Users/stevenchien/Library/Python/3.9/bin"

# Created by `pipx` on 2022-03-04 17:09:44
export PATH="$PATH:/Users/stevenchien/.local/bin"

# For pipenv
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
