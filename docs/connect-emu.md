# Connecting to Android Emulator over Network
I have the following scenario:

* MacBook Pro as my main development machine
* Windows and Linux with Parallels Desktop

I wanted to develop for Android (Xamarin or Native) from Virtual Machines (either Windows and Linux) and test in the emulator running directly on macOS. This is necessary because the performance of Android Emulator inside a Windows or Linux virtual machine is unusable.

It used to be hard to attend this scenario, but it was pretty to make it work based on the a Xamarin documentation (link on references).

The basic setup is:
1. Create an AVD from Android SDK
2. Launch the AVD on macOS
3. Run the script to allow connection to the local ADB
4. Connect from the Virtual Machine
5. Deploy apps to the emulator

## Starting emulator and preparing to receive connections

The following script allow connections to the local adb (based on the first method of the documentation):

```bash
#!/bin/bash

# Open up the Android Emulator to be accessed through network
adb kill-server

# Allow remote connection to the Emulator
cd /tmp
mkfifo backpipe
nc -kl 5555 0<backpipe | nc 127.0.0.1 5555 > backpipe
```

Also I've created a script to load the emulator from the command, that is very convenient for this scenario:

```bash
#!/bin/bash

# Start Android Emulator
cd $ANDROID_HOME/tools
emulator -avd nexus5x_api27 &
```

>Notice the use of `$ANDROID_HOME` environment variable. The file [base.bash_profile](../environment/base.bash_profile) shows how this could be setup.

## Connect from the virtual machine


## References
* [Is it possible to connect to Android emulators running on a Mac from a Windows VM?](https://docs.microsoft.com/en-us/xamarin/android/troubleshooting/questions/connect-android-emulator-mac-windows)