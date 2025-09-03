# Starship prompt
eval "$(starship init zsh)"

# Color settings, history, aliases, etc.
source ~/.zsh/color
source ~/.zsh/history
source ~/.zsh/homebrew
source ~/.zsh/options
source ~/.zsh/aliases
source ~/.zsh/completion
source ~/.zsh/path

# Orbstack shell integration (optional)
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Homebrew environment (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# rv Ruby version manager
eval "$(rv shell init zsh)"

# Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
