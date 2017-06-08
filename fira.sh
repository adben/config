#!/bin/bash

## cf from http://programster.blogspot.com/2014/05/ubuntu-14-desktop-install-fira-sans-and.html

cd /tmp

# install unzip just in case the user doesn't already have it.
if [[ `uname` = Linux ]]; then
    sudo apt-get install unzip -y
    wget "https://carrois.com/downloads/Fira/Fira_Sans_4_2.zip"
    wget "https://carrois.com/downloads/Fira/Fira_Code_3_2.zip"
    wget "https://carrois.com/downloads/Fira/Fira_Mono_3_2.zip"
    unzip Fira_Sans_4_2.zip
    unzip Fira_Mono_3_2.zip
    unzip Fira_Code_3_2.zip
    sudo mkdir -p /usr/share/fonts/truetype/Fira
    sudo mkdir -p /usr/share/fonts/opentype/Fira
    sudo cp /tmp/Fira*/**/*.ttf /usr/share/fonts/truetype/Fira/
    sudo cp /tmp/Fira*/**/*.otf /usr/share/fonts/opentype/Fira/
    sudo fc-cache -fv
else
    wget https://github.com/mozilla/Fira/archive/4.202.zip
    unzip 4.202.zip
    font_dir="$HOME/Library/Fonts"
    mkdir -p $font_dir
    cp Fira-4.202/otf/* $font_dir/
fi
