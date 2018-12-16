echo "Downloading Skype..."
if wget https://go.skype.com/skypeforlinux-64.deb -O skype.deb
then
  echo "Installing Skype"
  if sudo dpkg -i skype.deb
  then
    sudo rm skype.deb
    echo "Done"
  else
    echo "Some error has occured"
  fi
else
  echo "Couldn't download skype"
fi
