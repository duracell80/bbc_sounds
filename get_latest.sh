#!/bin/bash
mkdir -p downloads/BBC/"$1"/"$2"
cd downloads/BBC/"$1/$2"
get_iplayer --available-since 24 --listformat "<pid>" --type=radio --channel="$1" "$2" | tail -2 | head -n 1 | xargs -I {} get_iplayer --force --pid="{}"

sudo mkdir -p /var/lib/mpd/music/ROD
sudo mv -f ../../../../downloads/* /var/lib/mpd/music/ROD
mpc update
mpc clear
mpc insert "ROD/BBC/$1/$2"
mpc play
