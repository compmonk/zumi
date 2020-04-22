echo "Downloading Whatsapp..."
if wget https://www.thefanclub.co.za/sites/default/files/public/downloads/whatsapp-webapp_1.0_all.deb -O whatsapp.deb
then
  echo "Installing Whatsapp"
  if sudo dpkg -i whatsapp.deb
  then
    sudo rm whatsapp.deb
    echo "Done"
  else
    echo "Some error has occured"
  fi
else
  echo "Couldn't download whatsapp"
fi
