#!/bin/bash

SERVER_EXECUTABLE="/home/steam/server-files/start-server.sh"

export PATH=$PATH:/usr/games

# Download server files if needed.
if [ ! -f $SERVER_EXECUTABLE ]; then
  echo "Downloading server files..."

  bash /home/steam/steamcmd/steamcmd.sh +runscript /home/steam/update_zomboid.txt
fi

# Start the server.
bash $SERVER_EXECUTABLE -servername $servername