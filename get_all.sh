#!/bin/bash
mkdir -p downloads/BBC/"$1"/"$2"
cd downloads/BBC/"$1/$2"
get_iplayer --listformat "<pid>" --type=radio --channel="$1" "$2" | awk '(NR>7)' | sed '$d' | xargs -I {} get_iplayer --force --overwrite --pid="{}"
