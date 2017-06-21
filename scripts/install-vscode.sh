#!/bin/bash
echo "********************* Install MS Vsual Studio Code"
snap install --classic vscode
cp /snap/vscode/current/meta/gui/vscode.desktop /home/vagrant/Desktop/
chmod 755 /home/vagrant/Desktop/vscode.desktop
sed -i -e 's|Icon=.*|Icon=/snap/vscode/current/usr/share/pixmaps/code.png|' /home/vagrant/Desktop/vscode.desktop
if [[ $( grep -c "SNAP" /etc/profile ) -eq 0 ]] ; then
	echo "export SNAP=/snap" >> /etc/profile
fi

cat<<EOF>>/home/vagrant/Desktop/vscode-link.desktop
[Desktop Entry]
Encoding=UTF-8
Name=Link to Visual Studio Code on Linux
Type=Link
URL=https://code.visualstudio.com/docs/setup/linux
Icon=text-html
EOF

code --install-extension donjayamanne.python
code --install-extension wholroyd.jinja
code --install-extension haaaad.ansible
code --install-extension aws-scripting-guy.cform

