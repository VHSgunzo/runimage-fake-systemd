#!/bin/bash
set -e
cd "$(dirname "$(readlink -f "$0" 2>/dev/null)" 2>/dev/null)"
rm -rf *systemd* pkg src 2>/dev/null
echo "= create archlinux package"
makepkg -fsCc --noconfirm --nodeps
