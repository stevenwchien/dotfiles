cd ~
cd Documents/work

# tell if we are in iTerm or not
if [[ $ITERM_PROFILE ]]
then
    source ~/.oh-my-zshrc    
else    
    # get version control information
    autoload -Uz vcs_info
    zstyle ':vcs_info:git*' formats "%{%{$fg[green]%} (%b)%{$reset_color%}%m%u%c%{$reset_color%}"
    precmd() {
	vcs_info
    }

    setopt prompt_subst

    PS1=$'\e[0;36m%1d\e[0m\e[0;32m${vcs_info_msg_0_}\e[0m $ '
fi

# load our aliases
source ~/.zsh_aliases

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# opam configuration
test -r /Users/stevenchien/.opam/opam-init/init.zsh && . /Users/stevenchien/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
[ -f "/Users/stevenchien/.ghcup/env" ] && source "/Users/stevenchien/.ghcup/env" # ghcup-env

# for whatever happens sometimes in git add --patch
stty icrnl
eval "$(rbenv init -)"
eval "$(nodenv init -)"
