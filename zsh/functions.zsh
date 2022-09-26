#!/bin/zsh

function paclist() {
  # Based on https://bbs.archlinux.org/viewtopic.php?id=93683
  pacman -Qqe | \
    xargs -I '{}' \
      expac "${bold_color}% 20n ${fg_no_bold[white]}%d${reset_color}" '{}'
}

ue_search (){
  #replace this with fzf
  grep -A 12 "$@" users_editable.yaml
}

function GenerateEncryptedString() {
    # Usage ~$ GenerateEncryptedString "String"
    local STRING="${1}"
    local SALT=$(openssl rand -hex 8)
    local K=$(openssl rand -hex 12)
    local ENCRYPTED=$(echo "${STRING}" | openssl enc -aes256 -a -A -S "${SALT}" -k "${K}")
    echo "Encrypted String: ${ENCRYPTED}"
    echo "Salt: ${SALT} | Passphrase: ${K}"
}
