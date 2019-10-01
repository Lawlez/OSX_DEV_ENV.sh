###############################################################################
# Sublime Text
###############################################################################

echo ""
echo "Do you use Sublime Text 3 as your editor of choice, and is it installed? (y/n)"
read -r response
case $response in
  [yY])
    # Link subl command to sublime text 
    echo ""
    echo "Linking Sublime Text for command line usage as subl"
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
    break;;
  *) break;;
esac

###############################################################################
# install ZSH
###############################################################################
#pretty_print "installig zsh..."
#brew install zsh
#sudo mv /etc/zshenv /etc/zprofile
#cat /etc/shells | grep zsh || which zsh | sudo tee -a /etc/shells
#chsh -s $(which zsh)
###############################################################################
# Kill affected applications
###############################################################################
