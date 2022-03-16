#!/bin/bash

echo '##### Cleaning cache... #####'
rm -rf ~/Library/Application\ Support/Code/*Cache*
rm -rf ~/Library/Application\ Support/Code/logs
rm -rf ~/Library/Application\ Support/Code/Service\ Worker
rm -rf ~/Library/Application\ Support/Chromium/*/Service\ Worker
rm -rf ~/Library/Application\ Support/Chromium/Guest\ Profile
rm -rf ~/Library/Application\ Support/Signal/*Cache*
rm -rf ~/Library/Application\ Support/Signal/logs
rm -rf ~/Library/Application\ Support/Signal/temp
rm -f ~/.lesshst
rm -f ~/.viminfo
rm -f ~/.*_history

echo -e '\n##### Cleaning Homebrew packages... #####'
brew autoremove
brew cleanup
brew cleanup --prune=all

echo -e '\n##### Done #####'
exit 0
