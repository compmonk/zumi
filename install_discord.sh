echo "Downloading Discord..."
if wget -O discord.deb --content-disposition https://discord.com/api/download?platform=linux&format=deb 
then
  echo "Installing Discord"
  if sudo dpkg -i discord.deb
  then
    sudo rm discord.deb
    echo "Done"
  else
    echo "Some error has occured"
  fi
else
  echo "Couldn't download Discord"
fi
