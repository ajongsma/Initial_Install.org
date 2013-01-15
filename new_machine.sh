#!/bin/bash

#------------------------------------------------------------------------------
# References:
# https://gist.github.com/4135542
#------------------------------------------------------------------------------


#------------------------------------------------------------------------------
# SETTINGS
#------------------------------------------------------------------------------
 
MYSQL_ROOT_PASSWORD=password
MYSQL_GITORIOUS_PASSWORD=password
GITORIOUS_HOST=gitorious
SYSADMIN=sysadmin
SYSADMIN_EMAIL=git@$GITORIOUS_HOST
SYSADMIN_PASSWORD=password

#------------------------------------------------------------------------------
# CUSTOM FUNCTION
#------------------------------------------------------------------------------

successfully() {
  $* || (echo "failed" 1>&2 && exit 1)
}

#------------------------------------------------------------------------------
# INSTALLATION STARTS HERE
#------------------------------------------------------------------------------

mkdir ~/src
cd ~/src

###### To test #######
## Permissions
#echo "Fixing permissions ..."
#  successfully sudo chown -R `whoami` /usr/local

## Add path to file
#echo "Adding path SOFTWARE to file XXX ..."
#  successfully echo "
## recommended by brew doctor
#export PATH='/usr/local/bin:$PATH'" >> ~/.zshenv
#  successfully source ~/.zshenv


###### Start install ######

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

while ( [ ! -e /Applications/Xcode.app ] )
    echo Waiting for Xcode install...
    sleep 15
end


# TESTING - require instead of specific chars - START
require 'gcc'
#gcc_versionlong=`gcc --version`
#gcc_version=${gcc_versionlong:29:1}
#if [ $gcc_version -eq 4 ] ; then
#  echo gcc $gcc_version found
#else
#  echo gcc not found, please install the Xcode command line tools...
#fi
# TESTING - require instead of specific chars - END

# https://github.com/roderik/dotfiles
# https://github.com/mathiasbynens/dotfiles
mkdir ~/Github
cd ~/Github/
git clone https://github.com/ajongsma/Initial_Install.git
cd Initial_Install

# Install iTerm2
./install_iTerm2

## reload settings for changes to be taken into account
#source ~/.bashrc

# Install a broomed version of Ruby enviroment
# https://github.com/sstephenson/rbenv
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

###### TESTING - ADDENDUM CODE 1 ###### START
## MySQL
#echo "mysql-server-5.5 mysql-server/root_password password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
#echo "mysql-server-5.5 mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD" | sudo debconf-set-selections
#echo "mysql-server-5.5 mysql-server/root_password seen true" | sudo debconf-set-selections
#echo "mysql-server-5.5 mysql-server/root_password_again seen true" | sudo debconf-set-selections
# 
#sudo apt-get install -y mysql-client-5.5 mysql-server-5.5 libmysqlclient-dev
#mysql -u root --password=$MYSQL_ROOT_PASSWORD -e "CREATE DATABASE gitorious"
#mysql -u root --password=$MYSQL_ROOT_PASSWORD -e "CREATE USER 'gitorious'@'localhost' IDENTIFIED BY '$MYSQL_GITORIOUS_PASSWORD'"
#mysql -u root --password=$MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON gitorious.* TO 'gitorious'@'localhost'"
 
## Sphinx
#cd ~/src
#wget -c http://sphinxsearch.com/files/sphinx-0.9.9.tar.gz
#tar zxf sphinx-0.9.9.tar.gz
#cd sphinx-0.9.9
#./configure
#make 
#sudo make install
# 
## Memcached 
#sudo update-rc.d memcached defaults
# 
## Adding gitorious group
#sudo groupadd gitorious
#sudo usermod -a -G gitorious $SYSADMIN
# 
## Cloning gitorious project
# 
#sudo git clone https://git.gitorious.org/gitorious/mainline.git /var/www/gitorious
#sudo chown -R $SYSADMIN:gitorious /var/www/gitorious
#sudo chmod -R g+sw /var/www/gitorious

###### TESTING - ADDENDUM CODE 1 ###### END

