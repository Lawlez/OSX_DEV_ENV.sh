#!/bin/sh

pretty_print() {
  printf "\n%b\n" "$1"
}
pretty_print "Check installed versions of DEV ENV"

echo "\n checking yarn"
yarn -v

echo "\n checking NODE"
node -v

echo "\n checking git"
git --version

echo "\n checking homebrew"
brew -v


done
