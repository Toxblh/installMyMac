xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Add skill choose a version of cask
brew tap caskroom/versions

# ZSH
brew install zsh zsh-completions

# Java 8
brew cask install java8
JDK_FOLDER = `ls /Library/Java/JavaVirtualMachines | grep 1.8`

# JEnv
# http://davidcai.github.io/blog/posts/install-multiple-jdk-on-mac/
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc
jenv add /Library/Java/JavaVirtualMachines/$JDK_FOLDER/Contents/Home
jenv enable-plugin export
jenv global 1.8
jenv shell 1.8

# Quick-look-plugins
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo
qlmanage -r

# Pack for JS
brew install yarn --without-node
brew install nvm

# Pack for Work
brew install git
brew install watchman
brew cask install visual-studio-code

# Python 
# https://github.com/Homebrew/homebrew-core/issues/19286
sudo mkdir /usr/local/Frameworks
sudo chown $(whoami):admin /usr/local/Frameworks
brew install python3
brew install python@2

# export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/python@2/libexec/bin:$PATH"
