HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999

setopt share_history          # Share history across all sessions
setopt hist_expire_dups_first # Expire duplicate entries first
setopt hist_ignore_dups       # Ignore duplicate entries
setopt hist_verify            # Verify history substitutions

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
