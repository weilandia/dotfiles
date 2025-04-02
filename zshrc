source ~/.zsh/color
source ~/.zsh/history
source ~/.zsh/homebrew
source ~/.zsh/options
source ~/.zsh/aliases
source ~/.zsh/completion
source ~/.zsh/path
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Windsurf
export PATH="/Users/weilandia/.codeium/windsurf/bin:$PATH"
