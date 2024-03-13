#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
# http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo
echo -e "\033[1;97;48;5;177m [-] Application du dconf.conf \033[0m"
echo
dconf load / < dconf.conf

echo
echo -e "\033[1;97;48;5;177m [-] Installation des dépendances de bases \033[0m"
echo
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y python3 pipx

echo
echo -e "\033[1;97;48;5;177m [-] Installation de pipx & ansible \033[0m"
echo
pipx install ansible-core --force
pipx ensurepath
export PATH="$PATH:$HOME/.local/bin"

echo
echo -e "\033[1;97;48;5;177m [-] Installation de ansible galaxy collection \033[0m"
echo
ansible-galaxy collection install community.general
echo

echo -e "\033[1;97;48;5;40m [-] Pre installation ok, vous pouvez lancer\033[0m >> \033[1;30;48;5;15m bash -x install.sh \033[0m"
echo 
