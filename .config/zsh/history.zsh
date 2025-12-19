# History Configuration

HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# History options
setopt HIST_IGNORE_DUPS      # Keine Duplikate hintereinander
setopt HIST_IGNORE_SPACE     # Befehle mit Leerzeichen am Anfang ignorieren
setopt SHARE_HISTORY         # History zwischen Terminals teilen
setopt APPEND_HISTORY        # History anhängen, nicht überschreiben
