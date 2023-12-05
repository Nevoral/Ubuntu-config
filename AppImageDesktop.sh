#!/bin/bash

# Check if the script was provided with 5 parameters
if [ "$#" -ne 5 ]; then
    echo "Usage: $0 Name ExecutablePath IconFilePath Category Comment"
    exit 1
fi

# Assign the parameters to variables
Name="$1"
ExecutablePath="$2"
IconFilePath="$3"
Category="$4"
Comment="$5"

# Define the filename for the .desktop file
DesktopFile="$Name.desktop"

# Create the .desktop file with the provided content
cat <<EOF > "$DesktopFile"
[Desktop Entry]
Name=$Name
Exec=$ExecutablePath
Icon=$IconFilePath
Comment=$Comment
Type=Application
Terminal=false
Encoding=UTF-8
Categories=$Category
EOF

echo "Created $DesktopFile"
