# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install iterm2
brew cask install iterm2
cp ./com.googlecode.iterm2.plist ~/Documents/com.googlecode.iterm2.plist

# Instal VSCode
brew cask install visual-studio-code-insiders

# Install terminal utils
brew install bat
brew install fzf
(brew --prefix)/opt/fzf/install

# Install programming fonts
brew tap homebrew/cask-fonts
brew cask install font-iosevka
brew cask install font-fira-code
brew cask install font-iosevka-slab

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install spaceshipe theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
