# Aliases
# Command shortcuts

# Dotfiles bare repo management
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Common shortcuts
alias ls='lsd'
alias ll='lsd -la'
alias la='lsd -A'
alias l='lsd -CF'
alias cat='bat'
alias c='clear'

# neovim accessibility
alias vim='nvim'

# Safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Claude Clode
alias ccc='claude -c --dangerously-skip-permissions'
alias ccr='claude -r --dangerously-skip-permissions'

# pacman
alias syu='sudo pacman -Syu'
alias s='sudo pacman -S'
