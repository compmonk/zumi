echo "Downloading Zoom..."
if wget https://zoom.us/client/latest/zoom_amd64.deb -O zoom.deb
then
  echo "Installing Zoom"
  if sudo dpkg -i zoom.deb
  then
    sudo rm zoom.deb
    echo "Done"
  else
    echo "Some error has occured"
  fi
else
  echo "Couldn't download Zoom"
fi
