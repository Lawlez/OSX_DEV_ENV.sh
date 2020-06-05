#config.sh
#!/bin/sh

# DESCRIPTION
# Defines all script settings.

# SETTINGS
# General
export SYSTEM_LABEL=lwlx # Placeholder for system display name.
export SYSTEM_NAME=lwlx # Placeholder for system name.
export WORK_PATH=/private/tmp/downloads # Temporary location for processing of file downloads and installers.

# Homebrew
export RUBY_VERSION=2.3.7p456

export FIREFOX_APP_URL=http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/19.0/mac/en-US
export FIREFOX_APP_FILE=Firefox%2019.0.dmg
export FIREFOX_APP_NAME=Firefox.app

export CHROME_APP_URL=https://dl.google.com/chrome/mac/stable/GGRM
export CHROME_APP_FILE=googlechrome.dmg
export CHROME_APP_NAME="Google Chrome.app"

export ISTATS_APP_URL=http://s3.amazonaws.com/bjango/files/istatmenus4
export ISTATS_APP_FILE=istatmenus4.04.zip
export ISTATS_APP_NAME="iStat Menus.app"

export BARTENDER_APP_URL=http://www.macbartender.com/Demo
export BARTENDER_APP_FILE=Bartender.zip
export BARTENDER_APP_NAME=Bartender.app

export GITHUB_APP_URL=https://central.github.com/deployments/desktop/desktop/latest/darwin
export GITHUB_APP_FILE=GitHubDesktop.zip
export GITHUB_APP_NAME=GitHub.app