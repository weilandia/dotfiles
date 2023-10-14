# Makes color constants available and enables color output from ls, etc.
autoload -U colors
colors
export CLICOLOR=1

# Set up the prompt
git_prompt_info() {
  current_branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
  if [[ -n $current_branch ]]; then
    echo " %{$fg_bold[blue]%}$current_branch%{$reset_color%}"
  fi
}

emoji_prompt() {
  echo "%{$fg_bold[red]%}✈ %{$reset_color%}"
}

setopt promptsubst

## Allow exported PS1 variable to override default prompt.
if ! env | grep -q '^PS1='; then
  PS1='${SSH_CONNECTION+"%{$fg_bold[blue]%}%n@%m:"}%{$fg_bold[yellow]%}%c%{$reset_color%}$(git_prompt_info) $(emoji_prompt)'
fi

bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

export VISUAL=vscode
export EDITOR=$VISUAL
export HOMEBREW_NO_ANALYTICS=1
PATH="$HOME/.bin:/usr/local/sbin:$PATH"

export PATH=${PATH}:/bin
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export PATH="$HOME/.bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Add common autocompletions
autoload -Uz compinit && compinit
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '\t' autosuggest-accept

