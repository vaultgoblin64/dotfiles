# Completion System
# ZSH autocompletion settings

# Enable the "new" completion system (compsys)
autoload -Uz compinit && compinit

# Compile completion dump for faster loading
[[ ~/.zcompdump.zwc -nt ~/.zcompdump ]] || zcompile-many ~/.zcompdump

# Clean up helper function after use
unfunction zcompile-many
