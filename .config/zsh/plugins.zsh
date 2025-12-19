# ZSH Plugins
# Auto-install and load plugins

PLUGIN_DIR="$ZDOTDIR/plugins"

# Clone and compile missing plugins
if [[ ! -e "$PLUGIN_DIR/zsh-syntax-highlighting" ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git "$PLUGIN_DIR/zsh-syntax-highlighting"
    zcompile-many "$PLUGIN_DIR"/zsh-syntax-highlighting/{zsh-syntax-highlighting.zsh,highlighters/*/*.zsh}
fi

if [[ ! -e "$PLUGIN_DIR/zsh-autosuggestions" ]]; then
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git "$PLUGIN_DIR/zsh-autosuggestions"
    zcompile-many "$PLUGIN_DIR"/zsh-autosuggestions/{zsh-autosuggestions.zsh,src/**/*.zsh}
fi

if [[ ! -e "$PLUGIN_DIR/powerlevel10k" ]]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$PLUGIN_DIR/powerlevel10k"
    make -C "$PLUGIN_DIR/powerlevel10k" pkg
fi

# Plugin settings
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Load plugins
source "$PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
