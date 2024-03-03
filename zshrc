# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle lukechilds/zsh-nvm

eval "$(zoxide init zsh)"

# Alias section
alias zs="source ~/.zshrc"
alias dev="cd ~/Developer/Personal"
alias atl="cd ~/Developer/Atlassian"
alias ccat="bat -pp --theme='Catppuccin-mocha'"
alias ll="ls -lah"
alias repo-access="ssh -t bmesquita@repo-access.bb-inf.net bb-repo-env"
alias brewup="brew update && brew upgrade"
alias c="clear"
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias ports='netstat -a | grep -i "listen"'
alias tree='tree -C --dirsfirst'
alias intellij='open -a "IntelliJ IDEA.app"'
alias vim='nvim'
alias vi='nvim'

# Load the theme.
antigen theme romkatv/powerlevel10k
# antigen theme brunocmesquita/zsh-theme
# antigen theme omer
# Tell Antigen that you're done.
# antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
