#! /bin/bash
#------------------
# This script install snippets and settings for Visual Studio Mac.
#------------------

# Create Snippets folder if it doesn't exists
if [ ! -d ~/Library/VisualStudio/8.0/Snippets/ ]
then
  echo "Creating Snippets folder for VSMac 2019"
  mkdir ~/Library/VisualStudio/8.0/Snippets/
fi

echo "Copying Snippets to VS2019..."
cp -rfv Snippets/*.* ~/Library/VisualStudio/8.0/Snippets/

# Create KeyBindings folder if it doesn't exists
if [ ! -d ~/Library/VisualStudio/8.0/KeyBindings/ ]
then
  echo "Creating Key Bindings folder for VSMac 2019"
  mkdir ~/Library/VisualStudio/8.0/KeyBindings/
fi

echo "Copying Key Bindings to VS2019..."
cp -rfv KeyBindings/*.* ~/Library/VisualStudio/8.0/KeyBindings/
