#!/bin/sh

pretty_print() {
  printf "\n%b\n" "$1"
}
pretty_print "Check installed versions of DEV ENV"


pretty_print "\n checking yarn"
yarn -v

pretty_print "\n checking NODE"
node -v

pretty_print "\n checking git"
git --version

pretty_print "\n checking homebrew"
brew -v

pretty_print "\n checking NPM"
npm -v

pretty_print "\n checking PHP"
php -v

pretty_print "\n checking httpd server"
httpd -v

