# MacOS dotfiles

Dotfiles for [Apple macOS](https://www.apple.com/macos/) on my MacBook Pro.

## Software used

- [Chromium](https://www.chromium.org/Home)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [Git](https://git-scm.com)
- [GitHub CLI](https://github.com/cli/cli)
- [Homebrew](https://brew.sh/)
- [Neovim](https://neovim.io/)
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Visual Studio Code](https://code.visualstudio.com/)
- [ZSH](http://zsh.sourceforge.net/)

## Setup

```bash
# Set up repo
git clone --bare https://github.com/chrisx8/macos-dotfiles.git ~/.dotfiles
alias dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
dot checkout
dot config --local status.showUntrackedFiles no

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up Github CLI
gh auth login
```
