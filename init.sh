#!/usr/bin/env bash

set -ex

./noVNC-1.4.0/utils/novnc_proxy --vnc remote.elofun.net:5912 --listen 6081
