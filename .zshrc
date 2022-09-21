export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=( 
	git
  zsh-syntax-highlighting
  fzf
  zsh-autosuggestions
  k
)

source $ZSH/oh-my-zsh.sh

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Brave as default browser
export BROWSER=/usr/bin/brave

# Git shortcut
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

