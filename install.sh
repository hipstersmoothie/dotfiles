# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install iterm2
brew cask install iterm2
cp ./com.googlecode.iterm2.plist ~/Documents/com.googlecode.iterm2.plist

# Install VSCode
brew cask install visual-studio-code-insiders
cp ./vscode.settings.json $HOME/Library/Application Support/Code/User/settings.json

# Install VSCode Plugins
code-insiders --install-extension andys8.jest-snippets
code-insiders --install-extension ardenivanov.svelte-intellisense
code-insiders --install-extension bierner.markdown-preview-github-styles
code-insiders --install-extension christian-kohler.npm-intellisense
code-insiders --install-extension christian-kohler.path-intellisense
code-insiders --install-extension CoenraadS.bracket-pair-colorizer
code-insiders --install-extension cssho.vscode-svgviewer
code-insiders --install-extension DavidAnson.vscode-markdownlint
code-insiders --install-extension dbaeumer.vscode-eslint
code-insiders --install-extension eamodio.gitlens
code-insiders --install-extension eg2.vscode-npm-script
code-insiders --install-extension esbenp.prettier-vscode
code-insiders --install-extension Gruntfuggly.todo-tree
code-insiders --install-extension jakob101.RelativePath
code-insiders --install-extension JamesBirtles.svelte-vscode
code-insiders --install-extension jasonnutter.search-node-modules
code-insiders --install-extension johnpapa.vscode-cloak
code-insiders --install-extension johnpapa.vscode-peacock
code-insiders --install-extension mhmadhamster.postcss-language
code-insiders --install-extension mikeburgh.xml-format
code-insiders --install-extension ms-azuretools.vscode-docker
code-insiders --install-extension ms-vsliveshare.vsliveshare
code-insiders --install-extension plievone.vscode-template-literal-editor
code-insiders --install-extension redhat.vscode-yaml
code-insiders --install-extension ryanluker.vscode-coverage-gutters
code-insiders --install-extension Shan.code-settings-sync
code-insiders --install-extension silvenon.mdx
code-insiders --install-extension streetsidesoftware.code-spell-checker
code-insiders --install-extension vscode-icons-team.vscode-icons
code-insiders --install-extension wix.vscode-import-cost
code-insiders --install-extension yzhang.markdown-all-in-one

# Install terminal utils
brew install bat
brew install fzf
(brew --prefix)/opt/fzf/install

# Install Apps
brew cask install mark-text
brew cask install omnifocus

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
