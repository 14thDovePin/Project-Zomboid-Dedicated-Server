#!/bin/bash

# Add container setup bash code here...

# SteamCMD configuration file.
cat > /home/steam/update_zomboid.txt <<'EOL'
// Install or Update Zomboid
//
@ShutdownOnFailedCommand 1 //set to 0 if updating multiple servers at once
@NoPromptForPassword 1
//
force_install_dir /home/steam/server-files
login anonymous
app_update 380870 -beta unstable validate
quit
EOL