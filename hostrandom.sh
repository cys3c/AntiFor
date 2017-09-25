#!/bin/bash
#Randomize Hostname
#Script by @Psychomimetic on Instagram
#Script is a bit glitchy, occasionally doesn't change the hostname for whatever reason
date +%s | sha256sum | base64 | head -c 32 | echo > /etc/hostname
echo "Hostname modified in /etc/hostname"
host=$(sudo cat /etc/hostname)
sudo hostname $host
echo "Your new hostname is $host"
