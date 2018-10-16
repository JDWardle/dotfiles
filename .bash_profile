[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Add $git_branch and $git_dirty to the environment.
export GITAWAREPROMPT=~/.bash/jimeh/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Default: "\h:\W \u\$ "
export PS1="\[\033[38;5;214m\]\u\[$(tput sgr0)\]\[\033[38;5;250m\]@\[$(tput sgr0)\]\[\033[38;5;214m\]\h\[$(tput sgr0)\]\[\033[38;5;250m\]:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\[$(tput sgr0)\]\[\033[32m\] \$git_branch\$git_dirty\[\033[00m\]\[$(tput sgr0)\]\[\033[38;5;250m\]\\$\[$(tput sgr0)\] "

export EDITOR=/usr/bin/vim

# Usefull aliases.
# Most aliases copied from https://gist.github.com/natelandau/10654137
alias ll='ls -FGlAhp'
alias cp='cp -iv'                   # Copy with prompts when overwritting a file.
alias mv='mv -iv'                   # Move with prompts when overwritting a file.
alias mkdir='mkdir -pv'
alias sudo='sudo '                  # Allow these aliases to be used with sudo.
cd() { builtin cd "$@"; ll; }       # Always list directory contents upon 'cd'.
mcd() { mkdir -p "$1" && cd "$1"; } # Make new directory and cd to it.

