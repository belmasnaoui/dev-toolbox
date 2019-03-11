#! /bin/bash
#------------------
# This script install snippets for Visual Studio Mac.
#------------------

# Create Snippets folder if it doesn't exists
if [ ! -d ~/Library/VisualStudio/7.0/Snippets/ ]
then
  echo "Creating Snippets folder for VSMac 2017"
  mkdir ~/Library/VisualStudio/7.0/Snippets/
fi
if [ ! -d ~/Library/VisualStudio/8.0/Snippets/ ]
then
  echo "Creating Snippets folder for VSMac 2018"
  mkdir ~/Library/VisualStudio/8.0/Snippets/
fi

echo "Copying Snippets to VS2017..."
cp -rfv Snippets/*.* ~/Library/VisualStudio/7.0/Snippets/

echo ""
echo "Copying Snippets to VS2019..."
cp -rfv Snippets/*.* ~/Library/VisualStudio/8.0/Snippets/
