This is a fork of Roderik's (https://github.com/roderik/dotfiles) and Mathias’s (https://github.com/mathiasbynens/dotfiles) dotfiles, customised for my personal use.

----------------------

Modify if needed
----------------------

file: .exports

    export TZ='Europe/Amsterdam'

file: .osx

    sudo scutil --set ComputerName "<computername>"
    sudo scutil --set HostName "<computername>"
    sudo scutil --set LocalHostName "<computername>"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "<computername>"
    systemsetup -settimezone "Europe/Amsterdam" > /dev/null

---
You can clone the repository wherever you want. (I like to keep it in ~/Github/dotfiles, with ~/dotfiles as a symlink). The bootstrapper script will pull in the latest version and copy the files to your home folder.

git clone https://github.com/ajongsma/dotfiles.git && cd Initial_Install && ./bootstrap.sh

To update, cd into your local dotfiles repository and type:  
./bootstrap.sh
  
Alternatively, to update while avoiding the confirmation prompt:  
./bootstrap.sh -f  
BASH 4

Some features depend on bash version 4. Install by running .brew:

    ./.brew


Sensible OS X defaults
================
When setting up a new Mac, you may want to set some sensible OS X defaults:  

    ./.osx

---

Info:
===
Startup keys (http://support.apple.com/kb/HT1533?viewlocale=en_US&locale=en_US).

On an Apple Wireless Keyboard you might have to wait until the startup chime before holding the keys:
- Option shows alternative startup volumes
- Shift starts up in safe mode
- C starts from an optical disk (CD)
- T starts up in target disk mode
- N attempts to start up from a NetBoot server
- D (or ⌥D) opens Apple Hardware Test
- ⌘V starts up in verbose mode
- ⌘S starts in single user mode
- ⌘R starts from a recovery partition
- ⌥N starts from a NetBoot server using the default boot image
- ⌥⌘PR resets PRAM and NVRAM
- vHolding eject, F12, or a button on a pointing device ejects removable media (like optical disks)

Information about the Bash prompts:
- http://blog.sanctum.geek.nz/bash-prompts/


Other:
===
## Setup Dropbox

Copy Dropbox folder from previous drive to user folder

Install [Dropbox](https://www.dropbox.com)

## Setup 1Password:

Install [1Password](https://agilebits.com/onepassword/mac)

Tell it to use the existing file in your Dropbox

Install Browser Extensions

Preferences > Security: Lock after 480 minutes of computer inactivity

Preferences > Security > Lock when sleeping: Off

Preferences > Security > Lock when screen saver is active: Off

Preferences > Security > Disable automatic unlock for 1Password: Off

Preferences > Logins: Submit Automatically after filling a login: On

## Setup SublimeText:

Install [SublimeText](http://www.sublimetext.com/2)

Install [Sublime Package Control](http://wbond.net/sublime_packages/package_control/installation) 

Install Soda Theme via Package Control

Install Emmet via Package Control

Install CoffeeScript via Package Control

Install Gist via Package Control

Create symlinks for preferences:
`ln -s -f /Users/cmalven/Dropbox/Config/sublime-text/Preferences.sublime-settings /Users/cmalven/Library/Application\ Support/Sublime\ Text\ 2/Packages/User`

Create symlinks for key-bindings:
`ln -s -f /Users/cmalven/Dropbox/Config/sublime-text/Default\ \(OSX\).sublime-keymap /Users/cmalven/Library/Application\ Support/Sublime\ Text\ 2/Packages/User`

Create symlinks for color scheme:
`ln -s -f /Users/cmalven/Dropbox/Config/sublime-text/Solarized\ \(dark\).tmTheme /Users/cmalven/Library/Application\ Support/Sublime\ Text\ 2/Packages/User`

Create symlinks for snippets:
`ln -s /Users/cmalven/Dropbox/Config/sublime-text/snippets /Users/cmalven/Library/Application\ Support/Sublime\ Text\ 2/Packages/User`

Add terminal shortcut:
`ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl`

