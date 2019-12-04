#!/bin/sh

# Installing Web Dev env for mac os
# Includes: Homebrew, yarn, node.js, ZSH, git + gitconfig 
# USAGE
# ./OSX_DEV_ENV.sh

# SETTINGS
set -e # Exit if any command returns non-zero.
source config.sh


# FUNCTIONS
source functions.sh
source scripts/systemsettings.sh

# EXECUTION
echo ''
while true; do
  echo "Options:"
  echo "  s: Apply basic machine settings."
  echo "  i: Perform complete install (i.e. basic settings, Homebrew, applications, extensions, defaults, and work directory clean-up)."
  echo "  v: verify status of installed applications and extensions."
  echo "  q: Quit/Exit."
  echo ''
  read -p "Enter selection: " response
  case $response in
    's')
      scripts/systemsettings.sh
      break;;
    'i')
      scripts/systemsettings.sh
      scripts/apps.sh
      break;;
    'v')
      verify_installs
      verify_extensions
      break;;
    'q')
      break;;
  esac
done
echo 'done :3'