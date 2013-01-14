This is a fork of Roderik's (https://github.com/roderik/dotfiles) and Mathias’s (https://github.com/mathiasbynens/dotfiles) dotfiles, customised for my personal use.


Modify if needed
================
file: .exports 
- export TZ='Europe/Amsterdam'

file: .osx  
- sudo scutil --set ComputerName "\<computername>"
- sudo scutil --set HostName "\<computername>"
- sudo scutil --set LocalHostName "\<computername>"
- sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "\<computername>"
- systemsetup -settimezone "Europe/Amsterdam" > /dev/null

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
