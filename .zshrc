# # tell if we are in iTerm or not
# if [[ $ITERM_PROFILE ]]
# then
    
# else    
#     # get version control information
#     autoload -Uz vcs_info
#     zstyle ':vcs_info:git*' formats "%{%{$fg[green]%} (%b)%{$reset_color%}%m%u%c%{$reset_color%}"
#     precmd() {
# 	vcs_info
#     }

#     setopt prompt_subst

#     PS1=$'\e[0;36m%1d\e[0m\e[0;32m${vcs_info_msg_0_}\e[0m $ '
# fi

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

# for whatever happens sometimes in git add --patch
stty icrnl
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# opam configuration
test -r /Users/stevenchien/.opam/opam-init/init.zsh && . /Users/stevenchien/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Created by `pipx` on 2022-03-04 17:09:42
export PATH="$PATH:/Users/stevenchien/Library/Python/3.9/bin"

# Created by `pipx` on 2022-03-04 17:09:44
export PATH="$PATH:/Users/stevenchien/.local/bin"

# For pipenv
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

