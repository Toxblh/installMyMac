# Install ZSH and Oh-my-zsh
# ZSH:            https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
# Oh-my-zsh:      sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Change shell:   chsh -s $(which zsh)
# Test:           echo $SHELL
# Finish          zsh

USER=toxblh

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# powerlevel9k
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator vcs time)


# zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

plugins=(
  git

# zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  zsh-autosuggestions

# zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
