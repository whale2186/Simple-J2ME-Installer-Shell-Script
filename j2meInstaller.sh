#!/bin/bash

if [ "$1" ]; then

# Define the jar file and the icon file
jar_file=$1
icon_file="icon.png"

# Define the filename without extension
filename=$(basename "$jar_file" .jar)
origfilename=$(basename "$jar_file")
# Define the directories
emu=~/jars/emulator/freej2me.jar
jar_dir=~/jars/"$filename"
icon_dir="$jar_dir"/icon
app_dir=~/.local/share/applications/j2meInstaller

# Create the directories
mkdir -p "$jar_dir"
mkdir -p "$icon_dir"
mkdir -p "$app_dir"

# Copy the jar file to the jar directory
cp "$jar_file" "$jar_dir"

# Extract the icon file from the jar and move it to the icon directory
unzip -j "$jar_file" "$icon_file" -d "$icon_dir"
# Extract the META-INF/MANIFEST.MF file
unzip -p "$jar_file" META-INF/MANIFEST.MF > "$jar_dir"/MANIFEST.MF

# Retrieve the MIDlet-Name
midlet_name=$(grep 'MIDlet-Name' "$jar_dir"/MANIFEST.MF | cut -d ':' -f2 | tr -d '[:space:]')

rm "$jar_dir"/MANIFEST.MF

# Create the .desktop file
echo "[Desktop Entry]
Type=Application
Exec=java -jar $emu file://$jar_dir/$origfilename
Icon=$icon_dir/$icon_file
Terminal=false
Name=$midlet_name
" > "$app_dir"/"$filename".desktop

fi

