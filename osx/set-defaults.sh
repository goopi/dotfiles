#!/bin/bash

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# set computer name
sudo scutil --set ComputerName "goopi"
sudo scutil --set HostName "goopi"
sudo scutil --set LocalHostName "goopi"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "goopi"

# enable access for assistive devices
echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1
sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled

# use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

# allow quitting; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true
# show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true
# avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# always open everything in list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
# show a few different volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# show the ~/Library folder
chflags nohidden ~/Library

# hide bookmark bar
defaults write com.apple.Safari ShowFavoritesBar -bool false
# set home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"
# set up Safari for development
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# kill affected apps
for app in "Dock" "Finder" "Safari" "SystemUIServer" "Terminal" "iTunes"; do
  killall "$app" > /dev/null 2>&1
done

exit 0
