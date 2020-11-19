# ycontroller

## Setup Raspberry Pi

<https://github.com/janelia-experimental-technology/raspberrypi_setup>

    username: yuser
    hostname: ycontroller

Connect to ycontroller from host machine using SSH or web console.

## Clone this repository

```sh
git clone https://github.com/janelia-experimental-technology/y-arena.git
cd y-arena
git submodule init
git submodule update --recursive
```

## Install dependencies

```sh
sudo apt install python3-filelock -y
```

## Build Software Containers

```sh
cd ~/y-arena
git pull origin master
git submodule update --recursive
cd software/y_arena_odor_controller_ros
docker stop $(docker ps -aq)
docker system prune -f
docker build -t y_arena_odor_controller:latest .
```

## Run Setup Script

```sh
cd ~/y-arena/setup/
./ycontroller_setup install
sudo reboot
```

## Check systemd service

```sh
systemctl status arena-attached@00.service
systemd-analyze plot > boot_analysis.svg
```

## Updating

```sh
sudo apt update
sudo apt full-upgrade
cd ~/y-arena/setup/
./ycontroller_setup uninstall
git pull origin master
git submodule update --recursive
./ycontroller_setup install
sudo reboot
```
