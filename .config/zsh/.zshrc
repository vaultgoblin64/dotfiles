# ZSH Configuration
# Modular setup - each aspect is in its own file

# Powerlevel10k Instant Prompt (must be at the very top!)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load modular config files in order
source "$ZDOTDIR/functions.zsh"    # Helper functions (needed by other files)
source "$ZDOTDIR/exports.zsh"      # Environment variables
source "$ZDOTDIR/aliases.zsh"      # Command aliases
source "$ZDOTDIR/plugins.zsh"      # Plugin management
source "$ZDOTDIR/completion.zsh"   # Completion system (uses functions.zsh)
source "$ZDOTDIR/prompt.zsh"       # Prompt/theme
