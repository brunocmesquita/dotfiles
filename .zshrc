# Load Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source modular configuration files
for config_file in ~/.zsh/*.zsh; do
  source "$config_file"
done

if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# Load Powerlevel10k configuration if available
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/robbyrussell.omp.json)"
export GPG_TTY=$(tty)

# pnpm
export PNPM_HOME="/Users/bmesquita/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/opt/atlassian/bin:$PATH"

export PATH="/Users/bmesquita/.orbit/bin:$PATH"
export GPG_TTY=$(tty)
export PATH=$PATH:$HOME/go/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
