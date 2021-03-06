###############################################################################
# base environmet setup
# homebrew, nodeJS, git, zsh, etc
###############################################################################
echo "update homebrew? y/n"
read -r response
case $response in
  [yY])
    echo ""
    echo "getting homebrew.."
    brew update
    brew upgrade
    brew cleanup
    break;;
  *) break;;
esac


echo ""
echo "install homebrew? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "getting homebrew.."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    break;;
  *) break;;
esac

echo ""
echo "install NODEJS? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "installing Node.JS.."
    brew install node
    node -v
    break;;
  *) break;;
esac

echo ""
echo "install yarn? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "getting yarn.."
    brew install yarn
    yarn -v
    break;;
  *) break;;
esac

echo ""
echo "install git CLI? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "getting git.."
    brew install git
    git --version
    break;;
  *) break;;
esac

echo ""
echo "configure GIT? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "What is your github email?"
    read -r mail
case $mail in
  [yY])
    echo ""
    echo "setting mail"
    git config --global user.email "$mail"
    break;;
  *) break;;
esac
    brew install git
    git --version
    break;;
  *) break;;
esac

echo ""
echo "install XCODE CLI? (y/n)"
read -r response
case $response in
  [yY])
    echo ""
    echo "getting xcode.."
    xcode-select --install
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
