#!/bin/sh

# Installing Web Dev env for mac os

#show all files
defaults write com.apple.finder AppleShowAllFiles TRUE
defaults write com.apple.Finder AppleShowAllFiles -bool true

# dont create .DStore
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#embrace the space text selection
defaults write com.apple.finder QLEnableTextSelection -bool true

# disable mousescaling
defaults write NSGlobalDomain com.apple.mouse.scaling -int 1

# blazingly fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
# shorter initial key repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# unhide Lybrary
chflags nohidden ~/Library

# auto dim keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# textedit defaults to .txt and utf8
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# quit print service after printing
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true


