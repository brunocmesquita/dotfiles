# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Default prompt - only enabled when not using any custom one.
# PROMPT='%T %n %B%2~%b $ '

# Loading plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
source ~/.zsh-pyenv/zsh-pyenv.plugin.zsh
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# Alias section
alias dev="cd ~/Code/Personal"
alias atl="cd ~/Code/Atlassian"
alias cat="bat --theme='Catppuccin-mocha'"
alias ll="ls -lah"
alias .server="ssh -t bmesquita@repo-access.bb-inf.net bb-repo-env"
alias brewup="brew update && brew upgrade && exec zsh"

# Path
fpath=($fpath "/Users/bmesquita/.zfunctions")
export PATH=/Users/bmesquita/.local/bin:$PATH

# Pyenv configuration
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Oh-my-posh - https://ohmyposh.dev/docs
# eval "$(oh-my-posh init zsh --config /opt/homebrew/opt/oh-my-posh/themes/powerlevel10k_lean.omp.json)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
