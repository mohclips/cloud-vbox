#!/bin/bash
echo "********************* Desktop Settings"
setxkbmap gb

sudo rm /usr/share/applications/ubuntu-amazon-default.desktop
sudo rm /usr/share/applications/libreoffice-impress.desktop

# Must match case
# /usr/share/themes
# /usr/share/icons  
gsettings set org.gnome.desktop.interface gtk-theme "Windows XP Royale"
gsettings set org.gnome.desktop.wm.preferences theme "Windows XP Royale"
gsettings set org.gnome.desktop.interface icon-theme "Victory-Icon-Theme"

if [[ $( dpkg -l | grep -c fonts-hack ) -gt 0 ]]; then
  gsettings set org.gnome.desktop.interface monospace-font-name 'Hacker 13'
  gsettings set org.gnome.gedit.plugins.externaltools font 'Hacker 10'
  gsettings set org.gnome.gedit.plugins.pythonconsole font 'Hacker 10'
  gsettings set org.gnome.gedit.preferences.editor editor-font 'Hacker 12'
fi

# disable screen saver
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false
# turn off lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

gsettings set org.gnome.nautilus.preferences sort-directories-first true

# window controls on right hand side
gsettings set org.gnome.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'

#
# unity
#
gsettings set com.canonical.Unity always-show-menus true
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ icon-size 32
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"
gsettings set com.canonical.Unity.Lenses always-search "['applications.scope', 'files.scope']"
gsettings set com.canonical.Unity.ApplicationsLens display-available-apps false


# remove autostart after running this script once
sudo rm -f /etc/xdg/autostart/set-gnome-settings.sh.desktop
