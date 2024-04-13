This is a simple shell script for installing J2ME Files or jar
This only Creates the desktop file. You need to provide a emulator and check for the right syntax in the script

usage:

```
j2meinstaller.sh "example.jar"
```

This script has been made with freej2me emulator in mind place the emulator in `~/jars/emulator/`

If you can't find the emulator then you can use the precompiled freej2me in the repo

Download : [freej2me](https://github.com/whale2186/Simple-J2ME-Installer-Shell-Script/blob/main/freej2me.jar)

this was compiled using jdk17 so you would need jdk17 to run this

install java:  
`sudo apt install openjdk-17-jre` for debian based  
`sudo pacman -S jre17-openjdk` for arch based

you can compile your own freej2me from : [hex007/freej2me](https://github.com/hex007/freej2me)

Detailed Configuration:

`> git clone https://github.com/whale2186/Simple-J2ME-Installer-Shell-Script`  
`> cd Simple-J2ME-Installer-Shell-Script`  
Now you need to copy the freej2me.jar file in jars/emulator
