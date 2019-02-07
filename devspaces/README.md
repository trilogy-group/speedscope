# Speedscope Development with DF Devspaces

## Install DF Devspaces

1. Create and install devspaces client as it is written in help guide https://support.devspaces.io/article/22-devspaces-client-installation.

2. Deploy your development environment into DF devspaces following this guide https://support.devspaces.io/article/23-support-guidelines 

3. Here is some details about DF Devspaces https://devspaces.io/devspaces/help

Here follows the main commands used in Devspaces cli. 

|action   |Description                                                                                   |
|---------|----------------------------------------------------------------------------------------------|
|`devspaces --help`                    |Check the available command names.                               |
|`devspaces create [options]`          |Creates a DevSpace using your local DevSpaces configuration file |
|`devspaces start <devSpace>`          |Starts the DevSpace named \[devSpace\]                           |
|`devspaces bind <devSpace>`           |Syncs the DevSpace with the current directory                    |
|`devspaces info <devSpace> [options]` |Displays configuration info about the DevSpace.                  |

Use `devspaces --help` to know about updated commands.


### Start Devspaces 

This guide assumes that user is inside devspaces folder of the repository.

1. Get inside docker folder

```bash
cd docker
```

2.  Create DevSpaces.

```bash
devspaces create
```

3. Start your devspaces.
```bash
devspaces start speedscope
```

4. Start containers synchronization
Open terminal on folder you want to sync with devspaces and run:

```bash
devspaces bind speedscope
```
5. Get some information about container 

```bash
devspaces info speedscope
```

6. Connect to development container

```bash
devspaces exec speedscope
```

7. Copy shell script to `/data` folder and run it. It will clone, build and run the project

```bash
cp /start.sh .
./start.sh
```

Cloned source code will be synced into binded folder in step 3.


## Running Snapcraft.io via Docker-Compose file

### Dockerfile
 Dockefile is created on top of `ubuntu` image.
 
### Requirements
 - The project should be cloned from https://github.com/trilogy-group/speedscope
 - Docker version 18.09.0-ce
 - Docker compose version 1.23.1
  
### Quick Start
- Clone the repository
- Open a terminal session to that folder
- Run `./docker-cli.sh start`
- Run `./docker-cli.sh exec`
- At this point you must be inside the docker container, in the root folder of the project. From there, you can run the commands as usual:	
	- `npm install` to install dependencies
    - `npm run serve` to run speedscope application.
	
- When you finish working with the container, type `exit`
- Run `docker-cli stop` to stop and remove the service.
 
 Please refer to [Contributing](../CONTRIBUTING.md) doc or find out the link (https://github.com/trilogy-group/speedscope/blob/master/CONTRIBUTING.md) for more details on the building and running the app.

### Possible issues
 1. Docker-compose build might fail with message
```Couldn't connect to Docker daemon at http+docker://localhost - is it running? If it's at a non-standard location, specify the URL with the DOCKER_HOST environment variable.Couldn't connect to Docker daemon at http+docker://localhost - is it running?...```

Add user you are working under to the sudo group or add `sudo` for docker-compose commands in `docker-cli.sh` script.

 2. During the run app might fail with errors 
```ENOSPC: System limit for number of file watchers reached, watch...```

Run the following commnad to resolve this issue

```echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p```

 3. If application launched in a server without GUI or insisde docker container or in a system without browser installed there will be an error message during an attempt to open page in a default browser. It does not bother application functionality.
