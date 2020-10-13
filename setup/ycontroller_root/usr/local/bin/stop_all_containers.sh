#!/bin/bash

/usr/bin/docker stop $(/usr/bin/docker ps -aq)
/usr/bin/docker rm $(/usr/bin/docker ps -aq)
