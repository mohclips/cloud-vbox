#!/bin/bash
echo "********************* Install Windows Themes"
add-apt-repository ppa:noobslab/themes -y
add-apt-repository ppa:noobslab/icons -y
apt-get update -y
apt-get install unity-tweak-tool win-redmond-themes victory-icon-theme -y
 
