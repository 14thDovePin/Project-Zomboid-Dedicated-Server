#!/bin/bash

SERVER_EXECUTABLE="/home/steam/server-files/start-server.sh"
APP = 380870

export PATH=$PATH:/usr/games

# Download server files if needed.
if [ ! -f $SERVER_EXECUTABLE ]; then
  echo "Downloading server files..."

  bash /home/steam/steamcmd/steamcmd.sh +runscript /home/Steam/update_zomboid.txt
fi

# Start the server.
bash $SERVER_EXECUTABLE