# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# oh-my-zsh
source ~/.oh-my-zshrc

# load our aliases
source ~/.zsh_aliases

# load git-related aliases
source ~/.git_aliases

# load work-related aliases
source ~/.work_aliases

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# opam configuration
test -r /Users/stevenchien/.opam/opam-init/init.zsh && . /Users/stevenchien/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Created by `pipx` on 2022-03-04 17:09:42
export PATH="$PATH:/Users/stevenchien/Library/Python/3.9/bin"

# Created by `pipx` on 2022-03-04 17:09:44
export PATH="$PATH:/Users/stevenchien/.local/bin"

# For pipenv
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
