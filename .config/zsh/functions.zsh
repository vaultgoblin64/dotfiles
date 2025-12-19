# ZSH Functions
# Helper functions for the shell

# Compile ZSH files to wordcode for faster loading
function zcompile-many() {
    local f
    for f; do zcompile -R -- "$f".zwc "$f"; done
}
