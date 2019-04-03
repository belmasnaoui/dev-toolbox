#!/bin/bash

# Open up the Android Emulator to be accessed through network
adb kill-server

# Allow remote connection to the Emulator
cd /tmp
mkfifo backpipe
nc -kl 5555 0<backpipe | nc 127.0.0.1 5555 > backpipe