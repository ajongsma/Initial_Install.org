# install xcode via App Store first! It takes awhile
# install the command-line tools as well

#open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
if [ ! -e /Applications/Xcode.app ] ; then
    open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
  
    echo Xcode not installed, please install...
    sleep 15
    quit
else
    echo Xcode found
fi

gcc_versionlong=`gcc --version`
gcc_version=${gcc_versionlong:29:1}
if [ $gcc_version -eq 4 ] ; then
  echo gcc $gcc_version found
else
  echo gcc not found, please install the Xcode command line tools...
fi

# https://github.com/roderik/dotfiles
# https://github.com/mathiasbynens/dotfiles
mkdir ~/Github
cd ~/Github/
git clone https://github.com/ajongsma/Initial_Install.git
cd Initial_Install

#Install iTerm2
./install_iTerm2

#Install broomed Ruby enviroment
./install_rbenv

if [ ! -e .extra ] ; then
    cp .extra.dist .extra
    nano .extra
else
    echo .xtra file found
fi
#nano .osx
#./.osx
#./.brew
#./.iTerm2

#./bootstrap.sh

