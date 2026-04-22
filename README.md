# Project Zomboid Dedicated Server
A basic Project Zomboid dedicated server based on Docker Debian with SteamCMD. Details of how the server was setup inside the container can be found [here](https://pzwiki.net/wiki/Dedicated_server#Through_SteamCMD)

### Environment Variables
- `server_name` = "servertest"
  - Name of the server (ini file) to be used. More info [here](https://pzwiki.net/wiki/Dedicated_server#Customizing_server_name:~:text=can%20change%20the-,name%20of%20the%20server,-%2C%20this%20will%20change).
- `update_server_files` = "false"
  - Triggers SteamCMD to update files before launch.

### Docker Image Details
- Image uses Steam's Debian Bookworm as its base image.
- Creates two volumes `./server-data` `./server-files`.
  - `./server-data` contains game data related files.
  - `./server-files` is the installation folder of Project Zomboid.

### Server Details
- Server details here.