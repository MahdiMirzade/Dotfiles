#!/usr/bin/bash
#
#   __  __       _         _         __  __ _                   _
#  |  \/  | __ _| |__   __| |_   _  |  \/  (_)_ __ ______ _  __| | ___
#  | |\/| |/ _` | '_ \ / _` | | | | | |\/| | | '__|_  / _` |/ _` |/ _ \
#  | |  | | (_| | | | | (_| | |_| | | |  | | | |   / / (_| | (_| |  __/
#  |_|  |_|\__,_|_| |_|\__,_|\__, | |_|  |_|_|_|  /___\__,_|\__,_|\___|
#                            |___/
#
# This file is a part of `github.com/mahdymirzade/dofiles`.
#
#
git clone https://github.com/MahdyMirzade/Dotfiles.git /opt/dotfiles
cd /opt/dotfiles
chmod +x dot.sh
./dot.sh f
