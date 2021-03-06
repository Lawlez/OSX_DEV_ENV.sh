#!/bin/sh

pretty_print() {
  printf "\n%b\n" "$1"
}

checkFor() {
  type "$1" &> /dev/null ;
}

pretty_print "setting up your dev environment like a boss..."

# Set continue to false by default
CONTINUE=false

pretty_print "\n###############################################"
pretty_print "#        DO NOT RUN THIS SCRIPT BLINDLY       #"
pretty_print "#         YOU'LL PROBABLY REGRET IT...        #"
pretty_print "#                                             #"
pretty_print "#              SETUP OSX DEV ENV              #"
pretty_print "#         INSTALLS EXTRAS & OSX SETTINGS      #"
pretty_print "###############################################\n\n"
pretty_print "this will make changes to your computer, okay? (y/n)"
read -r response
case $response in
  [yY]) CONTINUE=true
      break;;
  *) break;;
esac

if ! $CONTINUE; then
  # Check if we're continuing and output a message if not
  pretty_print "Please go read the script, it only takes a few minutes"
  exit
fi

# Here we go.. ask for the administrator password upfront and run a
# keep-alive to update existing `sudo` time stamp until script has finished
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


###############################################################################
# General UI/UX
###############################################################################

echo "\nWould you like to set your computer name (as done via System Preferences >> Sharing)?  (y/n)"
read -r response
case $response in
  [yY])
      echo "What would you like it to be?"
      read COMPUTER_NAME
      sudo scutil --set ComputerName $COMPUTER_NAME --set HostName $COMPUTER_NAME --set LocalHostName $COMPUTER_NAME
      sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $COMPUTER_NAME
      break;;
  *) break;;
esac


echo ""
echo "Check for software updates daily, not just once per week"
case $response in
  [yY])
      defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
      break;;
  *) break;;
esac


################################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###############################################################################

echo ""
#echo "Increasing sound quality for Bluetooth headphones/headsets"
#defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40


###############################################################################
# Finder
###############################################################################

echo ""
echo "Show hidden files in Finder by default? (y/n)"
read -r response
case $response in
  [yY])
    defaults write com.apple.Finder AppleShowAllFiles -bool true
    break;;
  *) break;;
esac

echo ""
echo "Show dotfiles in Finder by default? (y/n)"
read -r response
case $response in
  [yY])
    defaults write com.apple.finder AppleShowAllFiles TRUE
    break;;
  *) break;;
esac

echo ""
echo "Show all filename extensions in Finder by default? (y/n)"
read -r response
case $response in
  [yY])
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true
    break;;
  *) break;;
esac

echo ""
echo "Use column view in all Finder windows by default? (y/n)"
read -r response
case $response in
  [yY])
    defaults write com.apple.finder FXPreferredViewStyle Clmv
    break;;
  *) break;;
esac

echo ""
echo "Avoid creation of .DS_Store files on network volumes? (y/n)"
read -r response
case $response in
  [yY])
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
    break;;
  *) break;;
esac


echo ""
echo "Allowing text selection in Quick Look/Preview in Finder by default"
defaults write com.apple.finder QLEnableTextSelection -bool true


echo ""
echo "Do you want to enable snap-to-grid for icons on the desktop and in other icon views? (y/n)"
read -r response
case $response in
  [yY])
    /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
    /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
    /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
    break;;
  *) break;;
esac

# Show Path bar in Finder
echo "\nShow Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true
echo "\nFinder - Display full POSIX path as window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show Status bar in Finder
echo "\nShow Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

# Show indicator lights for open applications in the Dock
echo "\nShow indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

echo "\nEnable Dark mode"
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark" ##darkmode

echo "\nSwitch accent color"
defaults write NSGlobalDomain AppleHighlightColor -string "0.152941 0.964706 0.978431" ##accentcolor

echo "\nturn off mouse scaling"
defaults write NSGlobalDomain com.apple.mouse.scaling -int 1 ##mousescaling

echo "\nenable beeponerror"
defaults write NSGlobalDomain com.apple.sound.beep.flash -int 1 ##beeponerror

#defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName ##login info in lockscreeen

echo "\nSwitch accent color"
defaults write -g ApplePressAndHoldEnabled -bool false ##disable press ndhold for keyrepeatt

echo "\nSet a blazingly fast keyboard repeat rate"
defaults write NSGlobalDomain KeyRepeat -int 1

# Set a shorter Delay until key repeat
echo "\nSetting a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Show the ~/Library folder
echo "\nShow the ~/Library folder"
chflags nohidden ~/Library

echo "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "Disable window resume system-wide"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

echo "Disable auto-correct?"
read -r response
case $response in
  [yY])
   defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
    break;;
  *) break;;
esac


echo "Require password immediately after sleep or screen saver begins?"
read -r response
case $response in
  [yY])
   defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
    break;;
  *) break;;
esac

echo "Keyboard - Automatically illuminate built-in MacBook keyboard in low light"
defaults write com.apple.BezelServices kDim -bool true

echo "Keyboard - Turn off keyboard illumination when computer is not used for 15 minutes"
defaults write com.apple.BezelServices kDimTime -int 900

echo "Trackpad - Map bottom right corner to right-click?"
read -r response
case $response in
  [yY])
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
    defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
    defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true
    break;;
  *) break;;
esac

echo "Trackpad - Enable tap to click for current user and the login screen?"
read -r response
case $response in
  [yY])
    defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
    defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
    break;;
  *) break;;
esac

echo "Chrome - Prevent native print dialog, use system dialog instead?"
read -r response
case $response in
  [yY])
   defaults write com.google.Chrome DisablePrintPreview -boolean true
    break;;
  *) break;;
esac

echo "TextEdit - Use plain text mode for new documents"
defaults write com.apple.TextEdit RichText -int 0

echo "TextEdit - Open and save files as UTF-8 encoding"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

echo "Printer - Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo ""
pretty_print "We done! set all the settings for your MacBook"
echo ""
echo ""
pretty_print "################################################################################"
echo ""
echo ""
pretty_print "Note that some of these changes require a logout/restart to take effect."
pretty_print "Killing some open applications in order to take effect."
echo ""

find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete
for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
  "Dock" "Finder" "Messages" "SystemUIServer" \
  "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
