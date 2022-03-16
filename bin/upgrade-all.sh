#!/bin/zsh
set -e

[[ -z "$@" ]] || return 1

echo "==> Updating Homebrew packages..."
brew update
echo
echo "==> Updating user applications..."
echo "### rustup"
rustup upgrade
echo
echo "### powerlevel10k"
git -C "$ZSH/custom/themes/powerlevel10k" pull
echo
echo "### oh-my-zsh"
"$ZSH/tools/upgrade.sh"
exit 0
