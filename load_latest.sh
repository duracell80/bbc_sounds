#!/bin/bash
mkdir -p downloads/BBC/"$1"/"$2"
cd downloads/BBC/"$1/$2"
get_iplayer --available-since 72 --listformat "<pid>" --type=radio --channel="$1" "$2" | tail -2 | head -n 1 | xargs -I {} get_iplayer --force --overwrite --pid="{}"

sudo mkdir -p /var/lib/mpd/music/ROD
sudo rm -rf /var/lib/mpd/music/ROD/BBC/"$1"/*.m4a
sudo cp -rf ../../../../downloads/* /var/lib/mpd/music/ROD
rm -rf downloads/BBC/"$1/"

mpc update
mpc add "ROD/BBC/$1/$2"
