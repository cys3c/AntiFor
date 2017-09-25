#!/bin/bash
read -p 'File Input: ' file
read -p 'Iterations: ' num
sudo shred -n $num -u -v -z $file
