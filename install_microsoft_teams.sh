echo "Downloading Micorsoft Teams..."
if wget -O teams.deb --content-disposition "https://go.microsoft.com/fwlink/p/?linkid=2112886&amp;clcid=0x409&amp;culture=en-us&amp;country=us"
then
  echo "Installing Micorsoft Teams"
  if sudo dpkg -i teams.deb
  then
    sudo rm teams.deb
    echo "Done"
  else
    echo "Some error has occured"
  fi
else
  echo "Couldn't download Micorsoft Teams"
fi
