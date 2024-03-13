#!/bin/bash

set -euo pipefail
IFS=$'\n\t'
export PATH="$PATH:$HOME/.local/bin"
# http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo
echo -e "[⚡] Installation de ta station de travail, cela peut prendre plus ou moins de temps, bon café :) "
echo

ansible-playbook -i "00-inventory.yml" --ask-become workstation.yml

echo
echo -e "[⭐] Succès, relance ta session ou encore mieux relance tout."
echo -e "[⭐] Apprécie bien ta machine et au boulôt ! "
echo
