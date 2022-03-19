#!/bin/bash

echo '##### Cleaning cache... #####'
rm -rf ~/Library/Application\ Support/Code/*Cache*
rm -rf ~/Library/Application\ Support/Code/logs
rm -rf ~/Library/Application\ Support/Code/Service\ Worker
rm -rf ~/Library/Application\ Support/BraveSoftware/Brave-Browser/*/Service\ Worker
rm -rf ~/Library/Application\ Support/BraveSoftware/Brave-Browser/Guest\ Profile
rm -rf ~/Library/Application\ Support/Signal/*Cache*
rm -rf ~/Library/Application\ Support/Signal/logs
rm -rf ~/Library/Application\ Support/Signal/temp
rm -rf ~/Library/Caches/Chromium
rm -rf ~/Library/Caches/pip
rm -rf ~/.lldb
rm -rf ~/.npm
rm -f ~/.lesshst
rm -f ~/.viminfo
rm -f ~/.*_history

echo -e '\n##### Cleaning Homebrew packages... #####'
brew autoremove
brew cleanup
brew cleanup --prune=all

echo -e '\n##### Done #####'
exit 0
