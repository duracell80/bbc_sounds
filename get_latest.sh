#!/bin/bash
mkdir -p downloads/BBC/"$1"/"$2"
cd downloads/BBC/"$1/$2"
get_iplayer --available-since 72 --listformat "<pid>" --type=radio --channel="$1" "$2" | tail -2 | head -n 1 | xargs -I {} get_iplayer --force --overwrite --pid="{}"
