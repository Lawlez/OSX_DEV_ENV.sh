#config.sh
#!/bin/sh

# DESCRIPTION
# Defines all script settings.

# SETTINGS
# General
export SYSTEM_LABEL=RA # Placeholder for system display name.
export SYSTEM_NAME=ra # Placeholder for system name.
export WORK_PATH=/private/tmp/downloads # Temporary location for processing of file downloads and installers.

# Homebrew
export RUBY_VERSION=2.0.0-p0

# Applications
export CAFFEINE_APP_URL=http://lightheadsw.com/files/releases/com.lightheadsw.Caffeine
export CAFFEINE_APP_FILE=Caffeine1.1.1.zip
export CAFFEINE_APP_NAME=Caffeine.app

export DROPBOX_APP_URL=https://d1ilhw0800yew8.cloudfront.net/client
export DROPBOX_APP_FILE=Dropbox%202.0.0.dmg
export DROPBOX_APP_NAME=Dropbox.app

export KNOX_APP_URL=https://d13itkw33a7sus.cloudfront.net/dist/K
export KNOX_APP_FILE=Knox-2.2.0.zip
export KNOX_APP_NAME=Knox.app

export ITERM_APP_URL=https://iterm2.googlecode.com/files
export ITERM_APP_FILE=iTerm2-1_0_0_20130122.zip
export ITERM_APP_NAME=iTerm.app

export SUBLIME_TEXT_APP_URL=http://c758482.r82.cf2.rackcdn.com
export SUBLIME_TEXT_APP_FILE=Sublime%20Text%202.0.1.dmg
export SUBLIME_TEXT_APP_NAME="Sublime Text 2.app"
export SUBLIME_TEXT_EXTENSION_ROOT="$HOME/Library/Application Support/Sublime Text 2/Packages"
export EASY_MOTION_EXTENSION_URL="git://github.com/tednaleid/sublime-EasyMotion.git"
export EASY_MOTION_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/EasyMotion"
export GIT_GUTTER_EXTENSION_URL="git://github.com/jisaacks/GitGutter.git"
export GIT_GUTTER_EXTENSION_PATH="$SUBLIME_TEXT_EXTENSION_ROOT/GitGutter"

export ALFRED_APP_URL=http://cachefly.alfredapp.com
export ALFRED_APP_FILE=Alfred_2.0_166.zip
export ALFRED_APP_NAME="Alfred 2.app"

export TEXTEXPANDER_APP_URL=http://cdn.smilesoftware.com
export TEXTEXPANDER_APP_FILE=TextExpander_4.0.5.zip
export TEXTEXPANDER_APP_NAME=TextExpander.app

export PATH_FINDER_APP_URL=http://get.cocoatech.com
export PATH_FINDER_APP_FILE=PF6_LION.zip
export PATH_FINDER_APP_NAME="Path Finder.app"

export FIREFOX_APP_URL=http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/19.0/mac/en-US
export FIREFOX_APP_FILE=Firefox%2019.0.dmg
export FIREFOX_APP_NAME=Firefox.app

export CHROME_APP_URL=https://dl.google.com/chrome/mac/stable/GGRM
export CHROME_APP_FILE=googlechrome.dmg
export CHROME_APP_NAME="Google Chrome.app"

export OPERA_APP_URL=http://get.geo.opera.com/pub/opera/mac/1214
export OPERA_APP_FILE=Opera_12.14_Setup_Intel.dmg
export OPERA_APP_NAME=Opera.app

export OMNIFOCUS_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.6
export OMNIFOCUS_APP_FILE=OmniFocus-1.10.4.dmg
export OMNIFOCUS_APP_NAME=OmniFocus.app

export OMNIOUTLINER_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.4
export OMNIOUTLINER_APP_FILE=OmniOutliner-3.10.6.dmg
export OMNIOUTLINER_APP_NAME=OmniOutliner.app

export OMNIGRAFFLE_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.6
export OMNIGRAFFLE_APP_FILE=OmniGrafflePro-5.4.2.dmg
export OMNIGRAFFLE_APP_NAME="OmniGraffle Professional 5.app"

export OMNIDAZZLE_APP_URL=http://downloads2.omnigroup.com/software/MacOSX/10.6
export OMNIDAZZLE_APP_FILE=OmniDazzle-1.2.dmg
export OMNIDAZZLE_APP_NAME=OmniDazzle.app

export EXPANDRIVE_APP_URL=http://downloads.expandrive.com/expandrive/v2-3-1_published_2012-03-07_at_15_18_52
export EXPANDRIVE_APP_FILE=ExpanDrive.zip
export EXPANDRIVE_APP_NAME=ExpanDrive.app

export ISTATS_APP_URL=http://s3.amazonaws.com/bjango/files/istatmenus4
export ISTATS_APP_FILE=istatmenus4.04.zip
export ISTATS_APP_NAME="iStat Menus.app"

export BARTENDER_APP_URL=http://www.macbartender.com/Demo
export BARTENDER_APP_FILE=Bartender.zip
export BARTENDER_APP_NAME=Bartender.app

export GITHUB_APP_URL=https://github-central.s3.amazonaws.com
export GITHUB_APP_FILE=mac%2FGitHub%20for%20Mac%20107.zip
export GITHUB_APP_NAME=GitHub.app

export SNIPPETS_APP_URL=http://www.snippetsapp.com/download
export SNIPPETS_APP_FILE=Snippets-1.4.1.zip
export SNIPPETS_APP_NAME=Snippets.app

export ESPRESSO_APP_URL=https://s3.amazonaws.com/macrabbit/downloads
export ESPRESSO_APP_FILE=Espresso%202.0.5.zip
export ESPRESSO_APP_NAME=Espresso.app

export CODEKIT_APP_URL=http://incident57.com/codekit/files
export CODEKIT_APP_FILE=codekit-8283.zip
export CODEKIT_APP_NAME=CodeKit.app

export ACORN_APP_URL=http://flyingmeat.com/download
export ACORN_APP_FILE=Acorn.zip
export ACORN_APP_NAME=Acorn.app

export DOUBLETAKE_APP_URL=http://echoone.com/doubletake
export DOUBLETAKE_APP_FILE=DoubleTake.dmg
export DOUBLETAKE_APP_NAME=DoubleTake.app

export IMAGE_OPTIM_APP_URL=http://imageoptim.com
export IMAGE_OPTIM_APP_FILE=ImageOptim.tbz2
export IMAGE_OPTIM_APP_NAME=ImageOptim.app

export VLC_APP_URL=http://iweb.dl.sourceforge.net/project/vlc/2.0.5/macosx
export VLC_APP_FILE=vlc-2.0.5.dmg
export VLC_APP_NAME=VLC.app

export INDUCTION_APP_URL=https://mesmerize.s3.amazonaws.com/Induction
export INDUCTION_APP_FILE=Induction-28.zip
export INDUCTION_APP_NAME=Induction.app

export PG_ADMIN_APP_URL=http://ftp.postgresql.org/pub/pgadmin3/release/v1.16.1/osx
export PG_ADMIN_APP_FILE=pgadmin3-1.16.1.dmg
export PG_ADMIN_APP_NAME=pgAdmin3.app

export NAMEBENCH_APP_URL=https://namebench.googlecode.com/files
export NAMEBENCH_APP_FILE=namebench-1.3.1-Mac_OS_X.dmg
export NAMEBENCH_APP_NAME=namebench.app

export BILLINGS_APP_URL=http://download.marketcircle.com/billings
export BILLINGS_APP_FILE=Billings376.zip
export BILLINGS_APP_NAME=Billings.app

export MONEYWELL_APP_URL=http://downloads.nothirst.com
export MONEYWELL_APP_FILE=MoneyWell_17.zip
export MONEYWELL_APP_NAME=MoneyWell.app

export DELICIOUS_LIBRARY_APP_URL=http://www.delicious-monster.com/downloads
export DELICIOUS_LIBRARY_APP_FILE=DeliciousLibrary2.zip
export DELICIOUS_LIBRARY_APP_NAME="Delicious Library 2.app"

export OPEN_OFFICE_APP_URL=http://hivelocity.dl.sourceforge.net/project/openofficeorg.mirror/stable/3.4.1
export OPEN_OFFICE_APP_FILE=Apache_OpenOffice_incubating_3.4.1_MacOS_x86_install_en-US.dmg
export OPEN_OFFICE_APP_NAME=OpenOffice.org.app

export COLLOQUY_APP_URL=http://colloquy.info/downloads
export COLLOQUY_APP_FILE=colloquy-latest.zip
export COLLOQUY_APP_NAME=Colloquy.app

export WEDGE_APP_URL=http://wedge.natestedman.com/release
export WEDGE_APP_FILE=Wedge.app.zip
export WEDGE_APP_NAME=Wedge.app

export SKYPE_APP_URL=http://download.skype.com/macosx
export SKYPE_APP_FILE=Skype_6.3.0.582.dmg
export SKYPE_APP_NAME=Skype.app

export VIRTUAL_BOX_APP_URL=http://download.virtualbox.org/virtualbox/4.2.6
export VIRTUAL_BOX_APP_FILE=VirtualBox-4.2.6-82870-OSX.dmg
export VIRTUAL_BOX_APP_NAME=VirtualBox.app

export DOXIE_APP_URL=http://www.getdoxie.com/resources/files
export DOXIE_APP_FILE=Doxie.dmg
export DOXIE_APP_NAME=Doxie.app

export PASTEBOT_SYNC_APP_URL=http://tapbots.net/pastebot
export PASTEBOT_SYNC_APP_FILE=PastebotSync.dmg
export PASTEBOT_SYNC_APP_NAME=PastebotSync.prefPane

export AIR_DISPLAY_APP_URL=http://avatron.com/downloads
export AIR_DISPLAY_APP_FILE=AirDisplayInstaller.zip
export AIR_DISPLAY_APP_NAME="Air Display Preferences.prefPane"

export EYEFI_APP_URL=http://support.eye.fi/agent/download/3.4.29
export EYEFI_APP_FILE=Eye-Fi.dmg
