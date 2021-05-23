# Utilities for BBC Sounds Radio

Requires
- MPC and MPD
- The get_iplayer utility

## Setup
`chmod +x *.sh`

## Get latest programme
Use the get_latest script giving the first argument as the station name and the second as the programme name

Example: Download and play latest News and Papers programme from Radio 4
```
$ chmod +x *.sh
$ ./play_latest.sh "BBC Radio 4" "News and Papers"
```

Example: Download and play latest Shipping Forecast from Radio 4
```
$ ./play_latest.sh "Radio 4" "Shipping Forecast"
```

Example: Download and queue up latest Recommends from 6 Music
```
$ ./load_latest.sh "6 Music" "6 Music Recommends"
```
## Get all programmes
Use the get_all script like

```
$ ./get_all.sh "BBC Radio 6 Music" "Lose Yourself With"
```

