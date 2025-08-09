# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/miniconda3/etc/profile.d/conda.sh" # Source conda if available
  else
    export PATH="$HOME/miniconda3/bin:$PATH" # Fallback if conda.sh is not found
  fi
fi
unset __conda_setup
# <<< conda initialize <<<
# Load Powerlevel10k configuration if available
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
